.class Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactDetailCallHistoryActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentCallsAdapter"
.end annotation


# instance fields
.field private mAlphabet:Ljava/lang/String;

.field protected mIdxCallLogDate:I

.field private mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    .line 1007
    const v0, 0x7f030036

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 1008
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$500(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040419

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mAlphabet:Ljava/lang/String;

    .line 1009
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1053
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;

    .line 1062
    .local v2, cache:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1063
    .local v9, number:Ljava/lang/String;
    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1064
    .local v6, date:J
    iput-wide v6, v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->date:J

    .line 1065
    const/4 v11, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1066
    .local v4, callsDuration:J
    const/4 v11, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1067
    .local v3, callType:I
    const/4 v10, -0x1

    .line 1068
    .local v10, phoneType:I
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I
    invoke-static {v12}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$800(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)I

    move-result v12

    if-eq v11, v12, :cond_0

    const/4 v11, 0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mContactType:I
    invoke-static {v12}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$800(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)I

    move-result v12

    if-eq v11, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknown:Z
    invoke-static {v11}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$900(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independentUnknownNumber:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$1000(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1071
    :cond_0
    const/4 v10, 0x2

    .line 1076
    :goto_0
    const/4 v11, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1077
    .local v1, bearerType:I
    const/4 v11, 0x2

    if-ne v11, v1, :cond_7

    .line 1079
    iget-object v11, v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundColor(I)V

    .line 1081
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xda

    if-ne v11, v12, :cond_1

    .line 1082
    iget-object v11, v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020015

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextCompoundDrawableWithIntrinicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1091
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->independent:Z
    invoke-static {v11}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$1100(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1092
    packed-switch v3, :pswitch_data_0

    .line 1109
    :cond_2
    :goto_2
    const-string v11, "-1"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1110
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    const v12, 0x7f0a016e

    invoke-virtual {v11, v12}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1118
    :cond_3
    :goto_3
    iget-object v11, v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v11, v9}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 1121
    iget-object v11, v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$1600(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIs24HourFormat:Z
    invoke-static {v13}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$1700(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Z

    move-result v13

    invoke-static {v12, v13, v6, v7}, Lcom/htc/util/contacts/TimeUtils;->getFormatTime(Landroid/content/Context;ZJ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$1800(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v6, v7, v12}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v8

    .line 1124
    .local v8, dayString:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1125
    iget-object v11, v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v11, v8}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 1128
    :cond_4
    sget-boolean v11, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v11, :cond_a

    .line 1129
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->setupTimeViewsIfCityId(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;J)V
    invoke-static {v11, v2, v6, v7}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$1900(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;J)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    move-object/from16 v0, p3

    #calls: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->setupCityView(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V
    invoke-static {v11, v2, v0, v9}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2000(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1136
    :goto_4
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isCallDurationHideProject()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1137
    iget-object v11, v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mDurationText:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2200(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 1141
    :cond_5
    return-void

    .line 1073
    .end local v1           #bearerType:I
    .end local v8           #dayString:Ljava/lang/String;
    :cond_6
    const/16 v11, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    goto/16 :goto_0

    .line 1088
    .restart local v1       #bearerType:I
    :cond_7
    iget-object v11, v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1095
    :pswitch_0
    iget-object v11, v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;
    invoke-static {v12}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$1200(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1099
    :pswitch_1
    iget-object v11, v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;
    invoke-static {v12}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$1300(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1103
    :pswitch_2
    iget-object v11, v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mDrawableMissed:Landroid/graphics/drawable/Drawable;
    invoke-static {v12}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$1400(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1111
    :cond_8
    const-string v11, "-2"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mNumber:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$1500(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1112
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    const v12, 0x7f0a0187

    invoke-virtual {v11, v12}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 1114
    :cond_9
    const-string v11, "-3"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1115
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    const v12, 0x7f0a0188

    invoke-virtual {v11, v12}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 1132
    .restart local v8       #dayString:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->setupTimeViews(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;J)V
    invoke-static {v11, v2, v6, v7}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2100(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;J)V

    goto/16 :goto_4

    .line 1092
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1149
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 1153
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    .line 1154
    .local v0, tmpCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1155
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1156
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1158
    .end local v0           #tmpCursor:Landroid/database/Cursor;
    :cond_2
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    .line 1159
    if-eqz p1, :cond_3

    .line 1160
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1161
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1162
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mRowIDColumn:I

    .line 1163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mDataValid:Z

    .line 1165
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->notifyDataSetChanged()V

    .line 1172
    :goto_1
    if-eqz p1, :cond_0

    .line 1173
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->updateIndexer(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1167
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mRowIDColumn:I

    .line 1168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mDataValid:Z

    .line 1170
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->notifyDataSetInvalidated()V

    goto :goto_1
.end method

.method protected generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1012
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x194

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 1013
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 1014
    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .parameter "sectionIndex"

    .prologue
    .line 1190
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    if-nez v1, :cond_1

    .line 1191
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2400(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1192
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1194
    const/4 v1, 0x0

    .line 1198
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 1196
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_0
    new-instance v1, Lcom/android/htccontacts/widget/DateIndexer;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2500(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mIdxCallLogDate:I

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/htccontacts/widget/DateIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    .line 1198
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/widget/DateIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1203
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/DateIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 1210
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method protected initListItemCache(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;Lcom/android/htccontacts/widget/HtcListItemBuilder;)V
    .locals 1
    .parameter "cache"
    .parameter "builder"

    .prologue
    .line 1019
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 1020
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineStamp()Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 1021
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getLeftImage()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 1023
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCacheList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$600(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1028
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v0

    .line 1029
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    new-instance v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$1;)V

    .line 1030
    .local v1, cache:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;
    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->initListItemCache(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ListItemCache;Lcom/android/htccontacts/widget/HtcListItemBuilder;)V

    .line 1031
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 1032
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2602(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Z)Z

    .line 1219
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2700(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$300(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    .line 1221
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2602(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Z)Z

    .line 1223
    :cond_0
    return-void
.end method

.method public updateIndexer(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1179
    if-eqz p1, :cond_0

    .line 1180
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mIdxCallLogDate:I

    .line 1181
    new-instance v0, Lcom/android/htccontacts/widget/DateIndexer;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2300(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mIdxCallLogDate:I

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/htccontacts/widget/DateIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 1185
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 1187
    :cond_1
    return-void
.end method
