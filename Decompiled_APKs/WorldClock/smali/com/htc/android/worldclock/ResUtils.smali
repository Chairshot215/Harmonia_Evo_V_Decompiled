.class public Lcom/htc/android/worldclock/ResUtils;
.super Ljava/lang/Object;
.source "ResUtils.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mResource:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    .line 25
    iget-object v0, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    .line 26
    return-void
.end method

.method public static deskClock_res()[I
    .locals 2

    .prologue
    .line 210
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 211
    const/16 v1, 0xa

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 222
    .local v0, resId:[I
    return-object v0

    .line 211
    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public static drawable_common_b_button(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 328
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 329
    const-string v0, "common_b_button_small"

    const v1, 0x2080008

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static drawable_common_button(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 323
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 324
    const-string v0, "common_button_small"

    const v1, 0x2080011

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static drawable_common_checkbox(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 157
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 158
    const-string v0, "common_checkbox"

    const v1, 0x2080012

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static drawable_common_delete(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 162
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 163
    const-string v0, "common_delete"

    const v1, 0x2080014

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static drawable_common_icon_deskclock_alarm_off(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 308
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 309
    const-string v0, "icon_deskclock_alarm_off"

    const v1, 0x7f020017

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static drawable_common_icon_deskclock_alarm_on(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 313
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 314
    const-string v0, "icon_deskclock_alarm_on"

    const v1, 0x7f020018

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static drawable_common_icon_deskclock_charge(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 303
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 304
    const-string v0, "icon_deskclock_charge"

    const v1, 0x7f020019

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static drawable_common_inputfield_light(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 318
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 319
    const-string v0, "common_inputfield_light"

    const v1, 0x2080045

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static drawable_common_list_item_background(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 167
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 168
    const-string v0, "list_selector_background"

    const v1, 0x208005e

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static drawable_common_more_view(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 333
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 334
    const-string v0, "common_more_view"

    const v1, 0x2080065

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static drawable_common_stopwatch_reset(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 338
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 339
    const-string v0, "common_b_button_small"

    const v1, 0x2080008

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static drawable_common_title_bar(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"

    .prologue
    .line 172
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public static drawable_timer_tumblers01()I
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 253
    const v0, 0x2080689

    return v0
.end method

.method public static drawable_timer_w_shadow01()I
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 258
    const v0, 0x208068b

    return v0
.end method

.method public static drawable_timer_w_tumblers01()I
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 248
    const v0, 0x208068c

    return v0
.end method

.method public static drawable_timer_w_tumblers_line01()I
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 263
    const v0, 0x208068d

    return v0
.end method

.method public static drwawble_common_digit_colon()I
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 243
    const v0, 0x208001f

    return v0
.end method

.method public static getCommonAppBkg(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 358
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 359
    const-string v0, "common_app_bkg"

    const v1, 0x20806b7

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static get_common_rearrange_icon(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 353
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 354
    const-string v0, "common_rearrange_selector"

    const v1, 0x208007e

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static get_common_rearrange_press(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 348
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 349
    const-string v0, "common_rearrange_rest"

    const v1, 0x20804c9

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static get_common_skin_color(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 343
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 344
    const-string v0, "text_selection_highlight"

    const v1, 0x20a001b

    invoke-static {p0, v0, v1}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinColorResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static id_cmd_bar_btn_1()I
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 268
    const v0, 0x7f0b0020

    return v0
.end method

.method public static id_cmd_bar_btn_2()I
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 273
    const v0, 0x7f0b001f

    return v0
.end method

.method public static id_search_box()I
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 278
    const v0, 0x20201c7

    return v0
.end method

.method public static removeTitle(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 299
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 300
    return-void
.end method

.method public static setCommand(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 282
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 283
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 284
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 285
    return-void
.end method

.method public static setListItemBackground(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter "context"
    .parameter "item"

    .prologue
    .line 177
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 178
    return-void
.end method

.method public static setTitleBarBackground(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "activity"
    .parameter "titlebar"

    .prologue
    .line 185
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 186
    return-void
.end method

.method public static setTitleBarBackground(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 181
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 182
    return-void
.end method

.method public static startForeground(Landroid/app/Service;I)V
    .locals 1
    .parameter "se"
    .parameter "id"

    .prologue
    .line 288
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 289
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 290
    .local v0, status:Landroid/app/Notification;
    invoke-virtual {p0, p1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 291
    return-void
.end method

.method public static stopForeground(Landroid/app/Service;Z)V
    .locals 0
    .parameter "se"
    .parameter "remove"

    .prologue
    .line 294
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 295
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    .line 296
    return-void
.end method

.method public static stopWatch_res()[I
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 227
    const/16 v1, 0xa

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 238
    .local v0, resId:[I
    return-object v0

    .line 227
    nop

    :array_0
    .array-data 0x4
        0x1ct 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public static tabControl_res()[[I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 189
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 190
    const/4 v1, 0x5

    new-array v0, v1, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    .line 206
    .local v0, resId:[[I
    return-object v0

    .line 190
    nop

    :array_0
    .array-data 0x4
        0x66t 0x2t 0x8t 0x2t
        0x65t 0x2t 0x8t 0x2t
        0x82t 0x3t 0x8t 0x2t
    .end array-data

    :array_1
    .array-data 0x4
        0x5ft 0x4t 0x8t 0x2t
        0x5et 0x4t 0x8t 0x2t
        0xd3t 0x3t 0x8t 0x2t
    .end array-data

    :array_2
    .array-data 0x4
        0xe1t 0x1t 0x8t 0x2t
        0xe0t 0x1t 0x8t 0x2t
        0x70t 0x3t 0x8t 0x2t
    .end array-data

    :array_3
    .array-data 0x4
        0x34t 0x4t 0x8t 0x2t
        0x33t 0x4t 0x8t 0x2t
        0xc3t 0x3t 0x8t 0x2t
    .end array-data

    :array_4
    .array-data 0x4
        0x40t 0x4t 0x8t 0x2t
        0x3ft 0x4t 0x8t 0x2t
        0xc7t 0x3t 0x8t 0x2t
    .end array-data
.end method


# virtual methods
.method public getResId(Ljava/lang/String;I)I
    .locals 1
    .parameter "skinDrawableStr"
    .parameter "drawableId"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSkinDrawableResId(Ljava/lang/String;I)I
    .locals 1
    .parameter "skinResStr"
    .parameter "resId"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setBackgroundColor(II)V
    .locals 2
    .parameter "viewId"
    .parameter "colorId"

    .prologue
    .line 51
    iget-object v1, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    return-void
.end method

.method public setBackgroundResource(ILjava/lang/String;I)V
    .locals 2
    .parameter "viewId"
    .parameter "skinDrawableStr"
    .parameter "drawableId"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    return-void
.end method

.method public setImageButtonImageResource(ILjava/lang/String;I)V
    .locals 2
    .parameter "viewId"
    .parameter "skinDrawableStr"
    .parameter "drawableId"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 64
    .local v0, imageButton:Landroid/widget/ImageButton;
    iget-object v1, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 67
    return-void
.end method

.method public setImageViewImageResource(ILjava/lang/String;I)V
    .locals 2
    .parameter "viewId"
    .parameter "skinDrawableStr"
    .parameter "drawableId"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    return-void
.end method

.method public setImageViewImageResource(Landroid/app/Activity;ILjava/lang/String;I)V
    .locals 2
    .parameter "activity"
    .parameter "viewId"
    .parameter "skinDrawableStr"
    .parameter "drawableId"

    .prologue
    .line 77
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 78
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3, p4}, Lcom/htc/android/worldclock/SkinHelper;->GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    return-void
.end method

.method public setLayout(IIIII)V
    .locals 3
    .parameter "viewId"
    .parameter "dimenWidthId"
    .parameter "dimenHeightId"
    .parameter "dimenMarginLeftId"
    .parameter "dimenMarginTopId"

    .prologue
    .line 88
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_4

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 92
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 95
    :cond_0
    if-eqz p3, :cond_1

    .line 96
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    :cond_1
    if-eqz p4, :cond_2

    .line 99
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 101
    :cond_2
    if-eqz p5, :cond_3

    .line 102
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 104
    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 107
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p2, :cond_5

    .line 109
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 111
    :cond_5
    if-eqz p3, :cond_6

    .line 112
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    :cond_6
    if-eqz p4, :cond_7

    .line 115
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 117
    :cond_7
    if-eqz p5, :cond_8

    .line 118
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 120
    :cond_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setLayoutAlignRight(III)V
    .locals 5
    .parameter "viewId"
    .parameter "strRightId"
    .parameter "dimenMarginRightId"

    .prologue
    .line 126
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 128
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_3

    .line 129
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 131
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p2, :cond_0

    .line 132
    const/16 v3, 0xb

    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 136
    :cond_0
    if-eqz p3, :cond_1

    .line 137
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 141
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    .line 132
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 144
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p3, :cond_4

    .line 147
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 150
    :cond_4
    iget-object v2, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 151
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setRoundedCornerEnabled(III)V
    .locals 6
    .parameter "viewId"
    .parameter "topRoundCornersStrId"
    .parameter "bottomRoundCornersStrId"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33
    iget-object v4, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 34
    .local v1, topRoundCorners:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/android/worldclock/ResUtils;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 36
    .local v0, bottomRoundCorners:Z
    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/htc/android/worldclock/ResUtils;->setRoundedCornerEnabled(IZZ)V

    .line 37
    return-void

    .end local v0           #bottomRoundCorners:Z
    .end local v1           #topRoundCorners:Z
    :cond_0
    move v1, v3

    .line 33
    goto :goto_0

    .restart local v1       #topRoundCorners:Z
    :cond_1
    move v0, v3

    .line 34
    goto :goto_1
.end method

.method public setRoundedCornerEnabled(IZZ)V
    .locals 2
    .parameter "viewId"
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 40
    iget-object v1, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 42
    return-void
.end method

.method public setTitle(III)V
    .locals 2
    .parameter "viewId"
    .parameter "strId"
    .parameter "visibility"

    .prologue
    .line 45
    iget-object v1, p0, Lcom/htc/android/worldclock/ResUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    .line 46
    .local v0, headerText:Lcom/htc/widget/HeaderBarText;
    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 47
    invoke-virtual {v0, p3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 48
    return-void
.end method
