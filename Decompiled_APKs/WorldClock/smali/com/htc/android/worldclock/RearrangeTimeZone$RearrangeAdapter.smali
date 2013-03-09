.class Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;
.super Landroid/widget/BaseAdapter;
.source "RearrangeTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/RearrangeTimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RearrangeAdapter"
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mItems:Ljava/util/ArrayList;

.field protected mLayout:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/RearrangeTimeZone;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "list"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mItems:Ljava/util/ArrayList;

    .line 214
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 215
    iput-object p2, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mItems:Ljava/util/ArrayList;

    .line 216
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 217
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 222
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 230
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 231
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 236
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 237
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 242
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 244
    if-eqz p2, :cond_1

    .line 245
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mLayout:Landroid/view/View;

    .line 252
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/worldclock/CityTime;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .local v8, ct:Lcom/htc/android/worldclock/CityTime;
    invoke-virtual {v8}, Lcom/htc/android/worldclock/CityTime;->getCityName()Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, cityName:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/htc/android/worldclock/CityTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v17

    .line 262
    .local v17, tz:Ljava/util/TimeZone;
    invoke-static/range {v17 .. v17}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 263
    .local v5, c:Ljava/util/Calendar;
    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 265
    .local v9, dayOfWeek:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0049

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItem2LineText;

    .line 266
    .local v16, text_city_name:Lcom/htc/widget/HtcListItem2LineText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0048

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 267
    .local v6, cb:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b004a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 268
    .local v14, reArrangeIcon:Landroid/widget/ImageView;
    if-eqz v14, :cond_0

    .line 269
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/worldclock/RearrangeTimeZone;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/android/worldclock/ResUtils;->get_common_rearrange_icon(Landroid/content/Context;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v11, v0

    .line 277
    .local v11, diff:J
    const-wide/16 v18, 0x0

    cmp-long v18, v11, v18

    if-lez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/android/worldclock/WorldClock;->mCurrentDay:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v9, v0, :cond_2

    .line 278
    sget-object v18, Lcom/htc/android/worldclock/WorldClock;->TOMORROW:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 286
    :goto_1
    move/from16 v15, p1

    .line 288
    .local v15, selectedPosition:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    move-object/from16 v18, v0

    aget-boolean v18, v18, v15

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    new-instance v18, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter$1;-><init>(Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;I)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    new-instance v10, Landroid/view/TouchDelegate;

    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/widget/HtcListItem;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcListItem;->getItemHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/widget/HtcListItem;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcListItem;->getItemHeight()I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v6}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 310
    .local v10, delegate:Landroid/view/TouchDelegate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mLayout:Landroid/view/View;

    move-object/from16 p2, v0

    move-object/from16 v18, p2

    .line 314
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #cb:Landroid/widget/CheckBox;
    .end local v7           #cityName:Ljava/lang/String;
    .end local v8           #ct:Lcom/htc/android/worldclock/CityTime;
    .end local v9           #dayOfWeek:I
    .end local v10           #delegate:Landroid/view/TouchDelegate;
    .end local v11           #diff:J
    .end local v14           #reArrangeIcon:Landroid/widget/ImageView;
    .end local v15           #selectedPosition:I
    .end local v16           #text_city_name:Lcom/htc/widget/HtcListItem2LineText;
    .end local v17           #tz:Ljava/util/TimeZone;
    :goto_2
    return-object v18

    .line 247
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030016

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mLayout:Landroid/view/View;

    goto/16 :goto_0

    .line 253
    :catch_0
    move-exception v13

    .line 254
    .local v13, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 256
    const/16 v18, 0x0

    goto :goto_2

    .line 279
    .end local v13           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #cb:Landroid/widget/CheckBox;
    .restart local v7       #cityName:Ljava/lang/String;
    .restart local v8       #ct:Lcom/htc/android/worldclock/CityTime;
    .restart local v9       #dayOfWeek:I
    .restart local v11       #diff:J
    .restart local v14       #reArrangeIcon:Landroid/widget/ImageView;
    .restart local v16       #text_city_name:Lcom/htc/widget/HtcListItem2LineText;
    .restart local v17       #tz:Ljava/util/TimeZone;
    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v18, v11, v18

    if-gez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/android/worldclock/WorldClock;->mCurrentDay:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v9, v0, :cond_3

    .line 280
    sget-object v18, Lcom/htc/android/worldclock/WorldClock;->YESTERDAY:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 282
    :cond_3
    sget-object v18, Lcom/htc/android/worldclock/WorldClock;->TODAY:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 289
    .restart local v15       #selectedPosition:I
    :catch_1
    move-exception v13

    .line 290
    .restart local v13       #e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mLayout:Landroid/view/View;

    move-object/from16 v18, v0

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 319
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 321
    iput-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mItems:Ljava/util/ArrayList;

    .line 323
    :cond_0
    iput-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->mLayout:Landroid/view/View;

    .line 324
    return-void
.end method
