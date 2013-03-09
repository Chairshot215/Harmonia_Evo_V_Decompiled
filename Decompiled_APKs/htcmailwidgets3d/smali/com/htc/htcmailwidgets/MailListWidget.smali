.class public Lcom/htc/htcmailwidgets/MailListWidget;
.super Lcom/htc/htcmailwidgets/MailWidgetBase;
.source "MailListWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final sEMSG_BASE:I = 0x22b8

.field public static final sEMSG_EXTRACT_DATA:I = 0x22b9

.field private static final sMSG_BASE:I = 0x15b3

.field private static final sMSG_CANCEL_NOTIFY:I = 0x15bb

.field private static final sMSG_GET_INITIAL_DATA:I = 0x15b5

.field private static final sMSG_LAUNCH_MAIL_DETAIL:I = 0x15bc

.field private static final sMSG_LAUNCH_PROVIDER_SCREEN:I = 0x15ba

.field private static final sMSG_QUERY_UNREAD_MAIL:I = 0x15b9

.field private static final sMSG_RESUME_DELAYED:I = 0x15b4

.field private static final sMSG_SECOND_ROUND_QUERY:I = 0x15b8

.field private static final sMSG_START_QUERY_FLAG:I = 0x15b6

.field private static final sUIMSG_BASE:I = 0x1a0a

.field private static final sUIMSG_MAIL_ANIMATRION_START:I = 0x1a0b

.field private static final sUIMSG_MAIL_ANIMATRION_STOP:I = 0x1a0c

.field private static final sUIMSG_UPDATE_ACTION_BAR:I = 0x1a11

.field private static final sUIMSG_UPDATE_HEADER_VIEW:I = 0x1a12

.field private static final sUIMSG_UPDATE_TITLE:I = 0x1a10

.field private static final sUIMSG_WIDGET_HIDE_PROGRESS:I = 0x1a0e

.field private static final sUIMSG_WIDGET_SHOW_PROGRESS:I = 0x1a0d

.field private static final sUIMSG_WIDGET_STOP_PROGRESS:I = 0x1a0f


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mAppHitBoxTapListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mExtractDataHandler:Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

.field private mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

.field private mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

.field private mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

.field private mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

.field private mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

.field private mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mUnreadCounts:I

.field private m_nTiltEndFrame:I

.field private m_nTiltStartFrame:I

.field private mbAutoSync:Z

.field private mbDoOrientation:Z

.field private mbFromIntent:Z

.field private mbInitialize:Z

.field private mbItemPressed:Z

.field private mbNeedForceAutoSync:Z

.field private mbNeedToBindWithListViewAgain:Z

.field private mbNoScene:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/htc/htcmailwidgets/MailListWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;-><init>()V

    .line 39
    const-string v0, "HTCWidget_MailListWidget"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbItemPressed:Z

    .line 48
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbAutoSync:Z

    .line 49
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedForceAutoSync:Z

    .line 53
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInitialize:Z

    .line 54
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFromIntent:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedToBindWithListViewAgain:Z

    .line 100
    iput v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUnreadCounts:I

    .line 101
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNoScene:Z

    .line 102
    iput v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->m_nTiltStartFrame:I

    .line 103
    iput v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->m_nTiltEndFrame:I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

    .line 596
    new-instance v0, Lcom/htc/htcmailwidgets/MailListWidget$2;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailListWidget$2;-><init>(Lcom/htc/htcmailwidgets/MailListWidget;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAppHitBoxTapListener:Lcom/htc/fusion/fx/MessageListener;

    .line 604
    new-instance v0, Lcom/htc/htcmailwidgets/MailListWidget$3;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailListWidget$3;-><init>(Lcom/htc/htcmailwidgets/MailListWidget;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/htcmailwidgets/MailListWidget;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/htcmailwidgets/MailListWidget;->extractCursorTask(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/htcmailwidgets/MailListWidget;)Lcom/htc/htcmailwidgets/FxMailListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    return-object v0
.end method

.method private extractCursorTask(Landroid/database/Cursor;)V
    .locals 8
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1231
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    .line 1233
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFromIntent:Z

    if-nez v0, :cond_6

    .line 1235
    iput v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailUpdateIndex:I

    .line 1261
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFirstRunQuery:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQuery:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFirstRunQuery:Z

    if-eqz v0, :cond_2

    .line 1265
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoFirstRunExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 1266
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFirstRunQuery:Z

    .line 1267
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFirstRunQueryCompleted:Z

    .line 1270
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQuery:Z

    if-eqz v0, :cond_3

    .line 1271
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoSecondRunExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 1272
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQuery:Z

    .line 1273
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFirstRunQueryCompleted:Z

    .line 1274
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQueryCompleted:Z

    .line 1279
    :cond_3
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedSecondRoundQuery:Z

    if-eqz v0, :cond_b

    .line 1280
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b8

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1281
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedSecondRoundQuery:Z

    .line 1283
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1284
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1285
    const/4 p1, 0x0

    .line 1328
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbIsESAStop:Z

    if-eqz v0, :cond_5

    .line 1329
    invoke-virtual {p0, v6}, Lcom/htc/htcmailwidgets/MailListWidget;->stopEascSync(Z)V

    .line 1330
    :cond_5
    :goto_2
    return-void

    .line 1236
    :cond_6
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbReQueryAll:Z

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMailIDs size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 1241
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1242
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1243
    const/4 p1, 0x0

    .line 1246
    :cond_8
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshMail:Z

    .line 1248
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQuery:Z

    if-eqz v0, :cond_9

    .line 1249
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQuery:Z

    .line 1250
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQueryCompleted:Z

    .line 1253
    :cond_9
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbIsESAStop:Z

    if-eqz v0, :cond_5

    .line 1254
    invoke-virtual {p0, v6}, Lcom/htc/htcmailwidgets/MailListWidget;->stopEascSync(Z)V

    goto :goto_2

    .line 1258
    :cond_a
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedMailChange:Z

    goto/16 :goto_0

    .line 1288
    :cond_b
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbReQueryAll:Z

    if-eqz v0, :cond_e

    .line 1289
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailListWidget;->isLastItemBoth(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbHasDeletedMail:Z

    if-nez v0, :cond_d

    .line 1291
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoRequeryAllExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 1292
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbReQueryAll:Z

    .line 1293
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbReQueryAllCompleted:Z

    .line 1294
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFirstRunQueryCompleted:Z

    .line 1295
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQueryCompleted:Z

    .line 1296
    iput v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mProcessIndex:I

    .line 1313
    :cond_c
    :goto_3
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedForceAutoSync:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_f

    .line 1314
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1391

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_1

    .line 1299
    :cond_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoSecondRunExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 1300
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQuery:Z

    .line 1301
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFirstRunQueryCompleted:Z

    .line 1302
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQueryCompleted:Z

    .line 1303
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbHasDeletedMail:Z

    goto :goto_3

    .line 1306
    :cond_e
    if-eqz p1, :cond_c

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1307
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1308
    const/4 p1, 0x0

    goto :goto_3

    .line 1315
    :cond_f
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQueryCompleted:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbReQueryAllCompleted:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedForceAutoSync:Z

    if-eqz v0, :cond_4

    :cond_10
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbAutoSync:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_4

    .line 1317
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_11

    .line 1318
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1319
    :cond_11
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimer:Ljava/util/Timer;

    .line 1320
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimerTast:Ljava/util/TimerTask;

    if-eqz v0, :cond_12

    .line 1321
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimerTast:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1322
    :cond_12
    new-instance v0, Lcom/htc/htcmailwidgets/MailWidgetBase$AutoSyncRemainingTimeOutTask;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$AutoSyncRemainingTimeOutTask;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimerTast:Ljava/util/TimerTask;

    .line 1323
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimerTast:Ljava/util/TimerTask;

    iget v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->TIME_OUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1
.end method

.method private getFxObjects()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 503
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 504
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 506
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 508
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 510
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 511
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 512
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 513
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 514
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 515
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 516
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 517
    :cond_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    aget-object v0, v0, v2

    check-cast v0, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 518
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 519
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 520
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 521
    :cond_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 522
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 523
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 524
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 525
    :cond_a
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 526
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 528
    :cond_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_HONEYCOMB:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne v0, v1, :cond_e

    :cond_c
    iget v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mResolution:I

    if-ne v0, v2, :cond_e

    .line 530
    :cond_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 531
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 533
    :cond_e
    return-void
.end method

.method private hideLoadMessage()V
    .locals 2

    .prologue
    .line 1832
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-eqz v0, :cond_1

    .line 1836
    :cond_0
    :goto_0
    return-void

    .line 1834
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private initLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 537
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 539
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_0

    .line 540
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNoScene:Z

    .line 594
    :goto_0
    return-void

    .line 543
    :cond_0
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNoScene:Z

    .line 545
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 548
    iget v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mOrientation:I

    if-ne v1, v6, :cond_6

    .line 549
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObjPort:[Lcom/htc/fusion/fx/FxObject;

    invoke-virtual {v1}, [Lcom/htc/fusion/fx/FxObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/fusion/fx/FxObject;

    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 550
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->getFxObjects()V

    .line 556
    :cond_1
    :goto_1
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 557
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_2

    .line 558
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a10

    invoke-virtual {v2, v3, v6, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 561
    :cond_2
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSense35:Z

    if-nez v1, :cond_3

    .line 562
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 563
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxButton;->setVisibility(Z)Ljava/util/ArrayList;

    .line 566
    :cond_3
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 567
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 568
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAppHitBoxTapListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 570
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mListBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 571
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mComposeBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 573
    sget v0, Lcom/htc/htcmailwidgets/LocalData;->mUpdateUIbyItems:I

    .line 574
    .local v0, val:I
    if-lez v0, :cond_4

    .line 575
    iput v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->MAILLIST_UPDATE_ITEMS:I

    .line 579
    :cond_4
    iget v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mOrientation:I

    if-ne v1, v6, :cond_7

    .line 580
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mResolution:I

    sget-object v4, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/Components;->getWidgetItemPath(Lcom/htc/htcmailwidgets/Components$OS_VERSION;ILcom/htc/htcmailwidgets/Components$ORIENTATION;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 586
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->initTilt()V

    .line 588
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedToBindWithListViewAgain:Z

    .line 590
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 591
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 593
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->initReceiver()V

    goto/16 :goto_0

    .line 551
    .end local v0           #val:I
    :cond_6
    iget v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mOrientation:I

    if-ne v1, v7, :cond_1

    .line 552
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObjLand:[Lcom/htc/fusion/fx/FxObject;

    invoke-virtual {v1}, [Lcom/htc/fusion/fx/FxObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/fusion/fx/FxObject;

    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 553
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->getFxObjects()V

    goto/16 :goto_1

    .line 582
    .restart local v0       #val:I
    :cond_7
    iget v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mOrientation:I

    if-ne v1, v7, :cond_5

    .line 583
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mResolution:I

    sget-object v4, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/Components;->getWidgetItemPath(Lcom/htc/htcmailwidgets/Components$OS_VERSION;ILcom/htc/htcmailwidgets/Components$ORIENTATION;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private queryUnreadMail()V
    .locals 5

    .prologue
    .line 1204
    const/4 v0, -0x1

    .line 1206
    .local v0, unread:I
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-eqz v1, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1210
    :cond_1
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 1211
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailUtils;->getAllUnreadMail(Landroid/content/Context;)I

    move-result v0

    .line 1216
    :goto_1
    iget v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUnreadCounts:I

    if-eq v1, v0, :cond_4

    if-nez v0, :cond_4

    .line 1217
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_2

    .line 1218
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "read_maill"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1223
    :cond_2
    :goto_2
    iput v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUnreadCounts:I

    .line 1225
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a11

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1213
    :cond_3
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    invoke-static {v1, v2, v3}, Lcom/htc/htcmailwidgets/MailUtils;->getUnreadMail(Landroid/content/Context;J)I

    move-result v0

    goto :goto_1

    .line 1219
    :cond_4
    iget v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUnreadCounts:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUnreadCounts:I

    if-nez v1, :cond_2

    .line 1220
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_2

    .line 1221
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "notice_newmail"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private releaseData()V
    .locals 2

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbIsESAStop:Z

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailListWidget;->stopEascSync(Z)V

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->releaseControl()V

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbWidgetDestroy:Z

    .line 770
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1390

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 771
    return-void
.end method

.method private setTaskBar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 751
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 753
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v5}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v5}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 760
    :cond_1
    :goto_0
    return-void

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 758
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showHeaderView(IJ)V
    .locals 5
    .parameter "count"
    .parameter "time"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1121
    if-lez p1, :cond_1

    move v0, v1

    .line 1122
    .local v0, bShow:Z
    :goto_0
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v3, :cond_4

    .line 1123
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v3, v0}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1124
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_4

    .line 1125
    if-nez v0, :cond_3

    .line 1126
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1128
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 1129
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mNoAccountAlert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1133
    :goto_1
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 1134
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1147
    :cond_0
    :goto_2
    return-void

    .end local v0           #bShow:Z
    :cond_1
    move v0, v2

    .line 1121
    goto :goto_0

    .line 1131
    .restart local v0       #bShow:Z
    :cond_2
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mEmptyMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 1137
    :cond_3
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1144
    :cond_4
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x15b9

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1145
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_0

    .line 1146
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a0e

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method private showLoadMessages()V
    .locals 2

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1825
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v1, Lcom/htc/htcmailwidgets/LocalData;->mLoadingString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1827
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 1828
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1829
    :cond_1
    return-void
.end method

.method private showPanel()V
    .locals 11

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const/16 v7, 0x15b9

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 942
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->hideLoadMessage()V

    .line 943
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 944
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 945
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_1

    .line 947
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mDefaultLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 949
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mNoAccountAlert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 950
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 992
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->setTaskBar()V

    .line 993
    return-void

    .line 951
    :cond_1
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mDefaultLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 955
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mAccountHasBeenDeleted:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 956
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 958
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 959
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 960
    iput-object v8, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    .line 961
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->initialize()V

    .line 962
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    .line 965
    :cond_2
    invoke-virtual {p0, v8}, Lcom/htc/htcmailwidgets/MailListWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 967
    iput-wide v9, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    .line 969
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v1, :cond_3

    .line 970
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->setAccountID(J)V

    .line 972
    :cond_3
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshAccount:Z

    .line 973
    invoke-direct {p0, v6}, Lcom/htc/htcmailwidgets/MailListWidget;->updateNotificationCount(I)V

    goto :goto_0

    .line 977
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    .line 979
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 981
    iget v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mCursorCount:I

    if-lez v1, :cond_5

    .line 983
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 986
    :cond_5
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_6

    .line 987
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 988
    :cond_6
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mEmptyMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private stopLoadMessages()V
    .locals 2

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1820
    :cond_0
    return-void
.end method

.method private updateNotificationCount(I)V
    .locals 5
    .parameter "notify_count"

    .prologue
    const/16 v4, 0x63

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1151
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbDoOrientation:Z

    if-eqz v0, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->setTaskBar()V

    .line 1155
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne v0, v1, :cond_6

    :cond_2
    iget v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mResolution:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    .line 1156
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1157
    if-lez p1, :cond_5

    .line 1158
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1159
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 1160
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1161
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1163
    :cond_3
    if-gt p1, v4, :cond_4

    .line 1164
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 1166
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, "99+"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 1168
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1169
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 1176
    :cond_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1177
    if-lez p1, :cond_9

    .line 1178
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_7

    .line 1179
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1180
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1182
    :cond_7
    if-gt p1, v4, :cond_8

    .line 1183
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1185
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 1187
    :cond_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, "99+"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1189
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 1192
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1193
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1194
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method private updateTitle(Z)V
    .locals 4
    .parameter "isdefault"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 777
    :cond_0
    if-eqz p1, :cond_1

    .line 778
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v1, Lcom/htc/htcmailwidgets/LocalData;->mDefaultLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 787
    :goto_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 780
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public checkAccount()V
    .locals 18

    .prologue
    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 793
    .local v16, start_time:J
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedSwitchAccount:Z

    .line 794
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshAccount:Z

    .line 795
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshMail:Z

    .line 796
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshFlag:Z

    .line 797
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    .line 798
    .local v7, acc_id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 799
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-nez v1, :cond_3

    const/4 v10, 0x0

    .line 800
    .local v10, count:I
    :goto_0
    if-nez v10, :cond_5

    .line 801
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-ltz v1, :cond_4

    .line 804
    const-wide/16 v7, -0x2

    .line 806
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailListWidget;->setAccountProperties(J)V

    .line 876
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    .line 878
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_11

    .line 879
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshMail:Z

    .line 882
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mbHaveAccountName:Z

    .line 885
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailListWidget;->getWhere()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mWhere:Ljava/lang/String;

    .line 894
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_1

    .line 896
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a0d

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 897
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a10

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 935
    :cond_1
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 938
    .local v14, end_time:J
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInitialize:Z

    .line 939
    .end local v14           #end_time:J
    :cond_2
    :goto_4
    return-void

    .line 799
    .end local v10           #count:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v10, v1

    goto :goto_0

    .line 807
    .restart local v10       #count:I
    :cond_4
    const-wide/16 v1, -0x3

    cmp-long v1, v7, v1

    if-nez v1, :cond_0

    .line 808
    const-wide/16 v7, -0x2

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    goto :goto_1

    .line 809
    :cond_5
    if-lez v10, :cond_0

    .line 810
    const-wide/16 v1, -0x1

    cmp-long v1, v7, v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    if-ne v10, v1, :cond_7

    .line 812
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v11, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    .line 813
    .local v11, da_id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailListWidget;->getAccountProperties(Lcom/htc/htcmailwidgets/MailUtils$Account;)V

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailListWidget;->setAccountProperties()V

    .line 815
    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-ltz v1, :cond_6

    .line 816
    move-wide v7, v11

    goto/16 :goto_1

    .line 818
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getDefaultAccount(): DEFAULT_NO_ACCOUNT: acc_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", da_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 820
    .end local v11           #da_id:J
    :cond_7
    const-wide/16 v1, -0x1

    cmp-long v1, v7, v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    if-gt v10, v1, :cond_0

    .line 822
    :cond_8
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-ltz v1, :cond_d

    .line 824
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v7, v1

    if-nez v1, :cond_9

    .line 825
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_0

    .line 826
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a10

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 828
    :cond_9
    const/4 v9, 0x0

    .line 830
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/htcmailwidgets/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 831
    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 834
    :cond_a
    const-wide/16 v7, -0x2

    .line 836
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailListWidget;->setAccountProperties(J)V

    .line 845
    :cond_b
    :goto_5
    if-eqz v9, :cond_0

    .line 846
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 847
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 841
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_b

    .line 842
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a10

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 849
    :catch_0
    move-exception v13

    .line 850
    .local v13, e:Ljava/lang/Exception;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 851
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 857
    .end local v9           #c:Landroid/database/Cursor;
    .end local v13           #e:Ljava/lang/Exception;
    :cond_d
    const-wide/16 v1, -0x2

    cmp-long v1, v7, v1

    if-eqz v1, :cond_0

    .line 860
    const-wide/16 v1, -0x3

    cmp-long v1, v7, v1

    if-nez v1, :cond_f

    .line 862
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    .line 863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v11, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    .line 864
    .restart local v11       #da_id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailListWidget;->getAccountProperties(Lcom/htc/htcmailwidgets/MailUtils$Account;)V

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailListWidget;->setAccountProperties()V

    .line 866
    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-ltz v1, :cond_e

    .line 867
    move-wide v7, v11

    .line 868
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAccount: Deleted Account Acquire New Account: acc_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 870
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getDefaultAccount(): DELETED_ACCOUNT_ACQUIRE: acc_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", da_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 873
    .end local v11           #da_id:J
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: checkAccount -- mAccountId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 888
    :cond_10
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountDefaultFolderId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailListWidget;->getWhere(JI)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mWhere:Ljava/lang/String;

    goto/16 :goto_2

    .line 900
    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mbHaveAccountName:Z

    .line 903
    const/4 v1, 0x1

    if-le v10, v1, :cond_13

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailListWidget;->launchAccountOption()V

    .line 932
    :cond_12
    :goto_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mWhere:Ljava/lang/String;

    goto/16 :goto_3

    .line 905
    :cond_13
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    if-nez v10, :cond_15

    .line 907
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_14

    .line 908
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1771

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 909
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 911
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x15ba

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto :goto_6

    .line 912
    :cond_15
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_12

    const/4 v1, 0x1

    if-ne v10, v1, :cond_12

    .line 913
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailListWidget;->getAccountProperties(Lcom/htc/htcmailwidgets/MailUtils$Account;)V

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailListWidget;->setAccountProperties()V

    .line 915
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshMail:Z

    .line 916
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInRefresh:Z

    if-nez v1, :cond_16

    .line 917
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mbHaveAccountName:Z

    .line 919
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountDefaultFolderId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailListWidget;->getWhere(JI)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mWhere:Ljava/lang/String;

    .line 921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x138d

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x138d

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 924
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_2

    .line 925
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1771

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 927
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a10

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 1332
    move-object v9, p1

    .line 1334
    .local v9, message:Landroid/os/Message;
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    if-nez v0, :cond_0

    .line 1335
    new-instance v0, Lcom/htc/htcmailwidgets/StopEASCSync;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/htcmailwidgets/StopEASCSync;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    .line 1337
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1729
    :cond_1
    :goto_0
    return-void

    .line 1339
    :sswitch_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_ON_STOP_EASC_SYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    if-eqz v0, :cond_1

    .line 1341
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/StopEASCSync;->forceStop()V

    goto :goto_0

    .line 1345
    :sswitch_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_ON_RESUME_EASC_SYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    if-eqz v0, :cond_1

    .line 1347
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/StopEASCSync;->forceResume()V

    goto :goto_0

    .line 1351
    :sswitch_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_PAUSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbIsESAStop:Z

    if-eqz v0, :cond_2

    .line 1354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailListWidget;->stopEascSync(Z)V

    .line 1356
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b8

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1357
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1358
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b4

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1359
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1360
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138f

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1361
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b5

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1362
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1365
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1366
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1772

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1367
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0b

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1368
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0c

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1369
    :cond_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0d

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1370
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0e

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1371
    :cond_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0f

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1372
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a10

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1373
    :cond_a
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a11

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1378
    :sswitch_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_RESUME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInitialize:Z

    if-nez v0, :cond_11

    .line 1381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInitialize:Z

    .line 1384
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 1385
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_c

    .line 1386
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1387
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1388
    :cond_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1392
    :cond_c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1393
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1395
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_d

    .line 1396
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0d

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1413
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_f

    .line 1414
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0b

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1415
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0b

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1416
    :cond_e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0b

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1419
    :cond_f
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b4

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1420
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b4

    const-wide/16 v2, 0x5dc

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 1422
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15bb

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 1425
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_10

    .line 1426
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 1427
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a10

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1433
    :cond_10
    :goto_2
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedGetAutoSyncStatus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_1

    .line 1434
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1392

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1435
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1392

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1397
    :cond_11
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v0, v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedReloadAccountInfo:Z

    if-nez v0, :cond_12

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 1399
    :cond_12
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1393

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1400
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1393

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_1

    .line 1402
    :cond_13
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 1403
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 1410
    :cond_14
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedUpdateDataToUI:Z

    goto/16 :goto_1

    .line 1405
    :cond_15
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    goto :goto_3

    .line 1429
    :cond_16
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a10

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1441
    :sswitch_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_RESUME_DELAYED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedReloadAccountInfo:Z

    if-eqz v0, :cond_17

    .line 1445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshAccount:Z

    .line 1446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshMail:Z

    .line 1447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbTimeChanged:Z

    .line 1448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshDateTime:Z

    .line 1449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedUpdateContactStatus:Z

    .line 1450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRequeryUnreadMails:Z

    .line 1451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFirstRunQueryCompleted:Z

    .line 1452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQueryCompleted:Z

    .line 1453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbReQueryAllCompleted:Z

    .line 1454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedExtractMailCursor:Z

    .line 1455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFromIntent:Z

    .line 1456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbRefetchAllMails:Z

    .line 1457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbHasNewMailComingNotify:Z

    .line 1458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedUpdateDataToUI:Z

    .line 1459
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138b

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1460
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138b

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1465
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbDoOrientation:Z

    .line 1467
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshAccount:Z

    if-eqz v0, :cond_1a

    .line 1468
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1469
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1493
    :cond_18
    :goto_4
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedUpdateDataToUI:Z

    if-eqz v0, :cond_19

    .line 1494
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_19

    .line 1495
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1772

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedUpdateDataToUI:Z

    .line 1500
    :cond_19
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRequeryUnreadMails:Z

    if-eqz v0, :cond_1

    .line 1501
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1502
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRequeryUnreadMails:Z

    goto/16 :goto_0

    .line 1470
    :cond_1a
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshMail:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedSecondRoundQuery:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbHasNewMailComingNotify:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbRefetchAllMails:Z

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mCursorCount:I

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1c

    :cond_1b
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 1472
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1474
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    const-wide/16 v2, 0x320

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 1476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedSecondRoundQuery:Z

    .line 1477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRequeryUnreadMails:Z

    goto :goto_4

    .line 1481
    :cond_1c
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedForceAutoSync:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_1d

    .line 1482
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1391

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1483
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1391

    const-wide/16 v2, 0x320

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto :goto_4

    .line 1486
    :cond_1d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_18

    .line 1487
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1488
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1489
    :cond_1e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 1509
    :sswitch_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_START_CHECK_ACCOUNT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->checkAccount()V

    goto/16 :goto_0

    .line 1516
    :sswitch_6
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbWidgetDestroy:Z

    if-nez v0, :cond_1

    .line 1519
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_START_QUERY_MAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailUpdateIndex:I

    .line 1521
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshFlag:Z

    .line 1524
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedExtractMailCursor:Z

    if-nez v0, :cond_1f

    .line 1526
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mProcessIndex:I

    .line 1529
    :cond_1f
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshMail:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbRefetchAllMails:Z

    if-eqz v0, :cond_20

    .line 1530
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->startMissedMessageQuery()V

    goto/16 :goto_0

    .line 1532
    :cond_20
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->startMissedMessageQuery2()V

    goto/16 :goto_0

    .line 1538
    :sswitch_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_START_QUERY_FLAG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshFlag:Z

    .line 1540
    iget v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountProtocol:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 1545
    :sswitch_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_GET_INITIAL_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b5

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1548
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/htcmailwidgets/MailListWidget$4;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailListWidget$4;-><init>(Lcom/htc/htcmailwidgets/MailListWidget;)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1554
    .local v10, thread:Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1559
    .end local v10           #thread:Ljava/lang/Thread;
    :sswitch_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleUiMessage: sMSG_SECOND_ROUND_QUERY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/htcmailwidgets/MailListWidget$5;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailListWidget$5;-><init>(Lcom/htc/htcmailwidgets/MailListWidget;)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1567
    .restart local v10       #thread:Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1572
    .end local v10           #thread:Ljava/lang/Thread;
    :sswitch_a
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_QUERY_UNREAD_MAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbWidgetDestroy:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbDoOrientation:Z

    if-nez v0, :cond_22

    .line 1574
    :cond_21
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->queryUnreadMail()V

    goto/16 :goto_0

    .line 1576
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRequeryUnreadMails:Z

    goto/16 :goto_0

    .line 1580
    :sswitch_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 1582
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-eqz v0, :cond_1

    .line 1583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshAccount:Z

    goto/16 :goto_0

    .line 1589
    :sswitch_c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_LAUNCH_PROVIDER_SCREEN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->launchProviderListScreen()V

    goto/16 :goto_0

    .line 1594
    :sswitch_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_RELOAD_ACCOUNT_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 1596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedReloadAccountInfo:Z

    .line 1597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbAccountAssigned:Z

    .line 1598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWhere:Ljava/lang/String;

    .line 1600
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_23

    .line 1601
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetId:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->removeAccountMap(JLjava/lang/String;IZ)V

    .line 1604
    :cond_23
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-nez v0, :cond_25

    .line 1605
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    .line 1606
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcmailwidgets/MailListWidget;->setAccountProperties(J)V

    .line 1607
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_24

    .line 1608
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1609
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a10

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1611
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailListWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 1612
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15ba

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto/16 :goto_0

    .line 1614
    :cond_25
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2a

    .line 1615
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailUtils;->isAccountDelete([Lcom/htc/htcmailwidgets/MailUtils$Account;J)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_27

    .line 1616
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    .line 1617
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcmailwidgets/MailListWidget;->setAccountProperties(J)V

    .line 1618
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_26

    .line 1619
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1620
    :cond_26
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->launchAccountOption()V

    .line 1621
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    goto/16 :goto_0

    .line 1623
    :cond_27
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-nez v0, :cond_29

    .line 1625
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcmailwidgets/MailListWidget;->getAccountName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    .line 1626
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->setAccountProperties()V

    .line 1627
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_28

    .line 1628
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a10

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1630
    :cond_28
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1631
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1633
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v0, :cond_1

    .line 1634
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->clear()V

    goto/16 :goto_0

    .line 1637
    :cond_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshMail:Z

    goto/16 :goto_0

    .line 1639
    :cond_2a
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1640
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailListWidget;->getAccountProperties(Lcom/htc/htcmailwidgets/MailUtils$Account;)V

    .line 1641
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->setAccountProperties()V

    .line 1642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshMail:Z

    .line 1643
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInRefresh:Z

    if-nez v0, :cond_2b

    .line 1644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbHaveAccountName:Z

    .line 1646
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    iget v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountDefaultFolderId:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcmailwidgets/MailListWidget;->getWhere(JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWhere:Ljava/lang/String;

    .line 1648
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1649
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1651
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v0, :cond_2b

    .line 1652
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->clear()V

    .line 1655
    :cond_2b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_2c

    .line 1656
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1658
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a10

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1661
    :cond_2c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v0, :cond_1

    .line 1662
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->setAccountID(J)V

    goto/16 :goto_0

    .line 1669
    :sswitch_e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sMSG_CANCEL_NOTIFY>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-nez v0, :cond_1

    .line 1671
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1672
    .local v6, i:Landroid/content/Intent;
    const-string v0, "com.htc.android.mail"

    const-string v1, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1673
    const-string v0, "com.htc.android.mail.intent.action.ACTION_CANCEL_NOTIFIY"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1674
    const-string v0, "AccountId"

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1676
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1682
    .end local v6           #i:Landroid/content/Intent;
    :sswitch_f
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_GET_AUTOSYNC_STATUS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-nez v0, :cond_2d

    .line 1684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedGetAutoSyncStatus:Z

    .line 1685
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->isAutoSync(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbAutoSync:Z

    goto/16 :goto_0

    .line 1687
    :cond_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedGetAutoSyncStatus:Z

    goto/16 :goto_0

    .line 1691
    :sswitch_10
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_AUTO_SYNC_REMAINING_TIME_OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-nez v0, :cond_2e

    .line 1693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedForceAutoSync:Z

    .line 1694
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->syncMail()V

    goto/16 :goto_0

    .line 1696
    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedForceAutoSync:Z

    goto/16 :goto_0

    .line 1700
    :sswitch_11
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->releaseControl()V

    .line 1702
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->initLayout()V

    .line 1704
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_2f

    .line 1705
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailDataManager;->onResetOrientation(I)V

    .line 1707
    :cond_2f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRequeryUnreadMails:Z

    .line 1708
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUnreadCounts:I

    .line 1710
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-nez v0, :cond_1

    .line 1713
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1389

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1717
    :sswitch_12
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_LAUNCH_MAIL_DETAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    iget v7, v9, Landroid/os/Message;->arg1:I

    .line 1720
    .local v7, index:I
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1721
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Launched message and prepare to launch mail detail, position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v0, v7}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v8

    .line 1723
    .local v8, mail:Lcom/htc/htcmailwidgets/MailData;
    iget v1, v8, Lcom/htc/htcmailwidgets/MailData;->mId:I

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountProtocol:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_30

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/htcmailwidgets/MailListWidget;->launchDetail(ILjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_30
    const/4 v0, 0x0

    goto :goto_5

    .line 1337
    :sswitch_data_0
    .sparse-switch
        0x1388 -> :sswitch_2
        0x1389 -> :sswitch_3
        0x138a -> :sswitch_11
        0x138b -> :sswitch_d
        0x138d -> :sswitch_6
        0x138e -> :sswitch_5
        0x138f -> :sswitch_0
        0x1390 -> :sswitch_1
        0x1391 -> :sswitch_10
        0x1392 -> :sswitch_f
        0x1393 -> :sswitch_b
        0x15b4 -> :sswitch_4
        0x15b5 -> :sswitch_8
        0x15b6 -> :sswitch_7
        0x15b8 -> :sswitch_9
        0x15b9 -> :sswitch_a
        0x15ba -> :sswitch_c
        0x15bb -> :sswitch_e
        0x15bc -> :sswitch_12
    .end sparse-switch
.end method

.method public handleUIMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1732
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1815
    :cond_0
    :goto_0
    return-void

    .line 1735
    :sswitch_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleUiMessage: sUIMSG_UPDATE_MAILDATA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v0, :cond_1

    .line 1738
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->setAccountID(J)V

    .line 1740
    :cond_1
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbItemPressed:Z

    if-nez v0, :cond_2

    .line 1741
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailDataList(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailListWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 1742
    iput-boolean v4, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedUpdateDataToUI:Z

    goto :goto_0

    .line 1744
    :cond_2
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedUpdateDataToUI:Z

    goto :goto_0

    .line 1749
    :sswitch_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleUiMessage: sUIMSG_WIDGET_SHOW_PANEL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-nez v0, :cond_0

    .line 1751
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->showPanel()V

    goto :goto_0

    .line 1756
    :sswitch_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbWidgetDestroy:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbDoOrientation:Z

    if-nez v0, :cond_5

    .line 1757
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1758
    iget v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mResolution:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mResolution:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mResolution:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 1759
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "play"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1764
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0b

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    goto :goto_0

    .line 1760
    :cond_6
    iget v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mResolution:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mResolution:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 1761
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "mail_open"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_1

    .line 1770
    :sswitch_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbWidgetDestroy:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbDoOrientation:Z

    if-nez v0, :cond_9

    .line 1771
    :cond_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1773
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0c

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1777
    :sswitch_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_a

    .line 1778
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1779
    :cond_a
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->showLoadMessages()V

    goto/16 :goto_0

    .line 1782
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->hideLoadMessage()V

    goto/16 :goto_0

    .line 1786
    :sswitch_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_b

    .line 1787
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1788
    :cond_b
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->stopLoadMessages()V

    goto/16 :goto_0

    .line 1791
    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_c

    .line 1792
    invoke-direct {p0, v3}, Lcom/htc/htcmailwidgets/MailListWidget;->updateTitle(Z)V

    goto/16 :goto_0

    .line 1794
    :cond_c
    invoke-direct {p0, v4}, Lcom/htc/htcmailwidgets/MailListWidget;->updateTitle(Z)V

    goto/16 :goto_0

    .line 1797
    :sswitch_8
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-nez v0, :cond_d

    .line 1798
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/htcmailwidgets/MailListWidget;->updateNotificationCount(I)V

    goto/16 :goto_0

    .line 1800
    :cond_d
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRequeryUnreadMails:Z

    goto/16 :goto_0

    .line 1803
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/htcmailwidgets/MailListWidget;->showHeaderView(IJ)V

    goto/16 :goto_0

    .line 1807
    :sswitch_a
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbHasUnreadMail:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_e

    .line 1808
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1809
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "notice_newmail"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1812
    :cond_e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1732
    :sswitch_data_0
    .sparse-switch
        0x1771 -> :sswitch_1
        0x1772 -> :sswitch_0
        0x1773 -> :sswitch_a
        0x1a0b -> :sswitch_2
        0x1a0c -> :sswitch_3
        0x1a0d -> :sswitch_4
        0x1a0e -> :sswitch_5
        0x1a0f -> :sswitch_6
        0x1a10 -> :sswitch_7
        0x1a11 -> :sswitch_8
        0x1a12 -> :sswitch_9
    .end sparse-switch
.end method

.method public initTilt()V
    .locals 3

    .prologue
    .line 380
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "tilt"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 382
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v0, :cond_0

    .line 383
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->m_nTiltStartFrame:I

    .line 384
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->m_nTiltEndFrame:I

    .line 387
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 397
    invoke-super {p0, p1, p2, p3}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 398
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RESULT_OK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_1

    const/16 v0, 0x2711

    if-ne p2, v0, :cond_1

    .line 400
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshMail:Z

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbRefetchAllMails:Z

    .line 404
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 406
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 409
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIntExtractDataPosition:I

    .line 411
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailDataManager;->resetAccountMap(JLjava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIntExtractDataPosition:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->setExtractionDataPosition(JLjava/lang/String;I)V

    .line 418
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_6

    .line 419
    :cond_2
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 420
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    .line 423
    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshAccount:Z

    .line 498
    :cond_4
    :goto_1
    return-void

    .line 421
    :cond_5
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 422
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    goto :goto_0

    .line 427
    :cond_6
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_7

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshAccount:Z

    goto :goto_1

    .line 432
    :cond_7
    const-string v0, "ACCOUNT_ID"

    const-wide/16 v1, -0x9

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 434
    .local v6, acc:J
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_8

    .line 435
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetId:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->removeAccountMap(JLjava/lang/String;IZ)V

    .line 439
    :cond_8
    iget-wide v8, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    .line 442
    .local v8, localAccountid:J
    const-wide v0, 0x7fffffffffffffffL

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 443
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    .line 446
    :goto_2
    const-string v0, "ACCOUNT_PROTOCOL"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountProtocol:I

    .line 447
    const-string v0, "ACCOUNT_DEFAULTFOLDER"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountDefaultFolderId:I

    .line 448
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 449
    iput-wide v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    .line 452
    :cond_9
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedSwitchAccount:Z

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFirstRunQueryCompleted:Z

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQueryCompleted:Z

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedExtractMailCursor:Z

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFromIntent:Z

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbRefetchAllMails:Z

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbAccountAssigned:Z

    .line 460
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mFirstVisibleItemIndex:Landroid/graphics/PointF;

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbLoacteCurrentItemPosition:Z

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWhere:Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v0, :cond_a

    .line 465
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->setAccountID(J)V

    .line 471
    :cond_a
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    .line 473
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->setAccountProperties()V

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshAccount:Z

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedRefreshMail:Z

    .line 476
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 477
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 479
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 480
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 481
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 484
    :cond_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 485
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 486
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 489
    :cond_c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v0, :cond_d

    .line 490
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->clear()V

    .line 492
    :cond_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mOrientation:I

    goto/16 :goto_1

    .line 445
    :cond_e
    const-string v0, "ACCOUNT_NAME"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    goto/16 :goto_2

    .line 497
    :cond_f
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->launchProviderListScreen()V

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfiguration"

    .prologue
    const/4 v2, 0x1

    .line 353
    invoke-super {p0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 355
    iget v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_3

    .line 356
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbDoOrientation:Z

    .line 359
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mOrientation:I

    .line 360
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getScrollOffset()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mFirstVisibleItemIndex:Landroid/graphics/PointF;

    .line 363
    :cond_0
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbLoacteCurrentItemPosition:Z

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_2

    .line 367
    iget v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mOrientation:I

    if-ne v0, v2, :cond_4

    .line 368
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->onWidgetPortrait()V

    .line 375
    :cond_2
    :goto_1
    return-void

    .line 358
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbDoOrientation:Z

    goto :goto_0

    .line 369
    :cond_4
    iget v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 370
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->onWidgetLandscape()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedState"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x6

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 130
    invoke-super {p0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-static {}, Lcom/htc/htcmailwidgets/MailUtils;->getSenseVersion()I

    move-result v5

    const/4 v8, 0x5

    if-lt v5, v8, :cond_c

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSense30:Z

    .line 133
    invoke-static {}, Lcom/htc/htcmailwidgets/MailUtils;->getSenseVersion()I

    move-result v5

    if-lt v5, v9, :cond_0

    move v7, v6

    :cond_0
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSense35:Z

    .line 134
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->getWidgetContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 138
    .local v0, WinManager:Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 139
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 140
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Lcom/htc/htcmailwidgets/Components;->getResolution(II)I

    move-result v5

    iput v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mResolution:I

    .line 143
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 145
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.htc.android.rosie.intent.extra.STYLE_SCENE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mSceneSetting:Ljava/lang/String;

    .line 147
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mSceneSetting:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->getWidgetInfo()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mSceneSetting:Ljava/lang/String;

    .line 151
    :cond_1
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mSceneSetting:Ljava/lang/String;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/htc/htcmailwidgets/Components;->parseScene(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    .line 153
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    if-gez v5, :cond_2

    .line 154
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v7, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_HONEYCOMB:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne v5, v7, :cond_d

    .line 155
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iput v9, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    .line 160
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mOrientation:I

    .line 162
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-nez v5, :cond_3

    .line 163
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->getWidgetContext()Landroid/content/Context;

    move-result-object v5

    iget v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mResolution:I

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v9, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mOrientation:I

    invoke-static {v5, v7, v8, v9}, Lcom/htc/htcmailwidgets/MailDataManager;->getInstance(Landroid/content/Context;ILcom/htc/htcmailwidgets/Components$OS_VERSION;I)Lcom/htc/htcmailwidgets/MailDataManager;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->preloadScene()V

    .line 167
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 169
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mQueryHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

    if-nez v5, :cond_4

    .line 170
    new-instance v5, Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v5, p0, v7}, Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mQueryHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

    .line 173
    :cond_4
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbRefetchAllMails:Z

    .line 175
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v5

    new-instance v7, Lcom/htc/htcmailwidgets/MailWidgetBase$WidgetHandler;

    invoke-direct {v7, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$WidgetHandler;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    invoke-interface {v5, v7}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 177
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-nez v5, :cond_5

    .line 178
    new-instance v4, Landroid/os/HandlerThread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MailListWidget("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 179
    .local v4, thread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 180
    new-instance v5, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    .line 183
    .end local v4           #thread:Landroid/os/HandlerThread;
    :cond_5
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

    if-nez v5, :cond_6

    .line 184
    new-instance v4, Landroid/os/HandlerThread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MailListWidget("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")-ExtractCursor"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 185
    .restart local v4       #thread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 186
    new-instance v5, Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;-><init>(Lcom/htc/htcmailwidgets/MailListWidget;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

    .line 189
    .end local v4           #thread:Landroid/os/HandlerThread;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->releaseControl()V

    .line 191
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->initLayout()V

    .line 195
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->initialize()V

    .line 199
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v5, :cond_7

    .line 201
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v7, 0x1a0f

    invoke-virtual {v5, v7}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 204
    :cond_7
    new-instance v5, Lcom/htc/htcmailwidgets/StopEASCSync;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/htc/htcmailwidgets/StopEASCSync;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    .line 206
    iget-boolean v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbEnableAutoSync:Z

    if-eqz v5, :cond_8

    .line 207
    new-instance v5, Lcom/htc/htcmailwidgets/MailListWidget$1;

    invoke-direct {v5, p0}, Lcom/htc/htcmailwidgets/MailListWidget$1;-><init>(Lcom/htc/htcmailwidgets/MailListWidget;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 218
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v6, v5}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 223
    :cond_8
    iget v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetId:I

    if-gez v5, :cond_9

    .line 224
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->getWidgetID()I

    move-result v5

    iput v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetId:I

    .line 227
    :cond_9
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 228
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 232
    :cond_a
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbLocalKorea:Z

    .line 234
    :cond_b
    return-void

    .end local v0           #WinManager:Landroid/view/WindowManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    :cond_c
    move v5, v7

    .line 132
    goto/16 :goto_0

    .line 157
    .restart local v0       #WinManager:Landroid/view/WindowManager;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #metrics:Landroid/util/DisplayMetrics;
    :cond_d
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    const/4 v7, 0x2

    iput v7, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 255
    invoke-super {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onDestroy()V

    .line 257
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->releaseData()V

    .line 259
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->removeAllMsg()V

    .line 261
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 263
    :cond_0
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    .line 265
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 267
    :cond_1
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    .line 268
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 270
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 272
    .local v6, looper:Landroid/os/Looper;
    if-eqz v6, :cond_2

    .line 273
    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    .line 274
    const/4 v6, 0x0

    .line 276
    :cond_2
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    .line 279
    .end local v6           #looper:Landroid/os/Looper;
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

    if-eqz v0, :cond_5

    .line 280
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 281
    .restart local v6       #looper:Landroid/os/Looper;
    if-eqz v6, :cond_4

    .line 282
    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    .line 283
    const/4 v6, 0x0

    .line 285
    :cond_4
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

    .line 288
    .end local v6           #looper:Landroid/os/Looper;
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 289
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 290
    :cond_6
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataReceiver:Landroid/content/BroadcastReceiver;

    .line 292
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailListWidget;->releaseControl()V

    .line 294
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 295
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObjPort:[Lcom/htc/fusion/fx/FxObject;

    .line 296
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->fxControlObjLand:[Lcom/htc/fusion/fx/FxObject;

    .line 298
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 299
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 300
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 302
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_8

    .line 303
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 304
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 305
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 307
    :cond_7
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 310
    :cond_8
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    .line 312
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 313
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 314
    :cond_9
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailInfo:Ljava/util/ArrayList;

    .line 316
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 317
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 318
    :cond_a
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailIDs:Ljava/util/ArrayList;

    .line 320
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAppHitBoxTapListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_b

    .line 321
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAppHitBoxTapListener:Lcom/htc/fusion/fx/MessageListener;

    .line 323
    :cond_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_c

    .line 324
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 326
    :cond_c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_d

    .line 327
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 329
    :cond_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_e

    .line 330
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 332
    :cond_e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_f

    .line 333
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 334
    :cond_f
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimer:Ljava/util/Timer;

    .line 336
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimerTast:Ljava/util/TimerTask;

    if-eqz v0, :cond_10

    .line 337
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimerTast:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 338
    :cond_10
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTimerTast:Ljava/util/TimerTask;

    .line 341
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v0, :cond_11

    .line 342
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->clear()V

    .line 343
    :cond_11
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    .line 345
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_12

    .line 346
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetId:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->removeAccountMap(JLjava/lang/String;IZ)V

    .line 347
    :cond_12
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    .line 349
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    .line 248
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 249
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->onWidgetPause()V

    .line 250
    invoke-super {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onPause()V

    .line 251
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/16 v7, 0x14

    const/16 v4, 0x22b9

    const/4 v3, 0x1

    const/16 v6, 0x1771

    const/4 v5, 0x0

    .line 996
    if-nez p3, :cond_6

    .line 997
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbRefetchAllMails:Z

    .line 998
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbHasNewMailComingNotify:Z

    .line 1000
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v1, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoEmptyData(JLjava/lang/String;)V

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a12

    invoke-virtual {v2, v3, v5, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1005
    :cond_1
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v1, :cond_2

    .line 1006
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v1}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1007
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/htcmailwidgets/MailListWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 1010
    :cond_2
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_4

    .line 1011
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1012
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1013
    :cond_3
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1016
    :cond_4
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbIsESAStop:Z

    if-eqz v1, :cond_5

    .line 1017
    invoke-virtual {p0, v5}, Lcom/htc/htcmailwidgets/MailListWidget;->stopEascSync(Z)V

    .line 1118
    :cond_5
    :goto_0
    return-void

    .line 1022
    :cond_6
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_b

    .line 1023
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbRefetchAllMails:Z

    .line 1024
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbHasNewMailComingNotify:Z

    .line 1026
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v1, :cond_7

    .line 1027
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoEmptyData(JLjava/lang/String;)V

    .line 1029
    :cond_7
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v1, :cond_8

    .line 1030
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v1}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_8

    .line 1031
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/htcmailwidgets/MailListWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 1034
    :cond_8
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_a

    .line 1035
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1036
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1037
    :cond_9
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1039
    :cond_a
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1041
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbIsESAStop:Z

    if-eqz v1, :cond_5

    .line 1042
    invoke-virtual {p0, v5}, Lcom/htc/htcmailwidgets/MailListWidget;->stopEascSync(Z)V

    goto :goto_0

    .line 1047
    :cond_b
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    if-nez v1, :cond_17

    .line 1055
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIntExtractDataPosition:I

    if-ge v1, v2, :cond_c

    .line 1056
    iput v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIntExtractDataPosition:I

    .line 1057
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v1, :cond_c

    .line 1058
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIntExtractDataPosition:I

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager;->onSetExtractDataCount(I)V

    .line 1060
    :cond_c
    const/16 v1, 0xa

    if-ne p1, v1, :cond_f

    .line 1063
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "First query 10 mails back, prepare to extract data and update ui"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedSecondRoundQuery:Z

    .line 1065
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbFirstRunQuery:Z

    .line 1066
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1067
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1068
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1069
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

    if-eqz v1, :cond_d

    .line 1070
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

    invoke-virtual {v1, v0}, Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1072
    :cond_d
    if-eqz p3, :cond_e

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1073
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1074
    :cond_e
    const/4 p3, 0x0

    goto/16 :goto_0

    .line 1076
    .end local v0           #msg:Landroid/os/Message;
    :cond_f
    if-eq p1, v7, :cond_10

    const/16 v1, 0x1e

    if-ne p1, v1, :cond_5

    .line 1078
    :cond_10
    if-ne p1, v7, :cond_14

    .line 1080
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Second query all mails back, prepare to extract data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSecondRunQuery:Z

    .line 1082
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1083
    .restart local v0       #msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1084
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1085
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

    if-eqz v1, :cond_12

    .line 1086
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

    invoke-virtual {v1, v0}, Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1110
    .end local v0           #msg:Landroid/os/Message;
    :cond_11
    :goto_1
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_5

    .line 1111
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a12

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1088
    .restart local v0       #msg:Landroid/os/Message;
    :cond_12
    if-eqz p3, :cond_13

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1089
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1090
    :cond_13
    const/4 p3, 0x0

    goto :goto_1

    .line 1092
    .end local v0           #msg:Landroid/os/Message;
    :cond_14
    const/16 v1, 0x1e

    if-ne p1, v1, :cond_11

    .line 1094
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Requery all mails back, prepare to extract data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbReQueryAll:Z

    .line 1096
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbReQueryAllCompleted:Z

    .line 1097
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1098
    .restart local v0       #msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1099
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1100
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

    if-eqz v1, :cond_15

    .line 1101
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;

    invoke-virtual {v1, v0}, Lcom/htc/htcmailwidgets/MailListWidget$ExtractDataHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1103
    :cond_15
    if-eqz p3, :cond_16

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1104
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1105
    :cond_16
    const/4 p3, 0x0

    goto :goto_1

    .line 1114
    .end local v0           #msg:Landroid/os/Message;
    :cond_17
    if-eqz p3, :cond_18

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1115
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1116
    :cond_18
    const/4 p3, 0x0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbInvisible:Z

    .line 239
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbLaunchMailApp:Z

    .line 240
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1389

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 241
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->onWidgetResume()V

    .line 242
    invoke-super {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onResume()V

    .line 243
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 3
    .parameter "tilt"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->m_nTiltStartFrame:I

    iget v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->m_nTiltEndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 393
    :cond_0
    return-void
.end method

.method public releaseControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 632
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 634
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 636
    :cond_0
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 638
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 640
    :cond_1
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 642
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 644
    :cond_2
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 646
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 647
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 648
    :cond_3
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 650
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_4

    .line 651
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 652
    :cond_4
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 654
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbSense35:Z

    if-nez v0, :cond_6

    .line 655
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_5

    .line 656
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 657
    :cond_5
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 660
    :cond_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_7

    .line 661
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mListBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 662
    :cond_7
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 664
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_8

    .line 665
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mComposeBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 666
    :cond_8
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 668
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_9

    .line 669
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAppHitBoxTapListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 670
    :cond_9
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 672
    return-void
.end method

.method public setAdapter(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    const/16 v4, 0x18

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 676
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbWidgetDestroy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbDoOrientation:Z

    if-eqz v0, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    if-nez p1, :cond_4

    .line 680
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 681
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_3

    .line 683
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a12

    invoke-virtual {v1, v2, v3, v3}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 685
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->clear()V

    .line 687
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 691
    :cond_4
    if-eqz p1, :cond_6

    .line 692
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 693
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_5

    .line 694
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 695
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v0, :cond_6

    .line 696
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->clear()V

    .line 697
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->notifyDataSetChanged()V

    .line 705
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-nez v0, :cond_b

    .line 706
    new-instance v0, Lcom/htc/htcmailwidgets/FxMailListAdapter;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    invoke-direct {v0, v1, p1, v2}, Lcom/htc/htcmailwidgets/FxMailListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/htc/htcmailwidgets/Components$WidgetInfo;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    .line 707
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->setAccountID(J)V

    .line 708
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedToBindWithListViewAgain:Z

    if-eqz v0, :cond_a

    .line 709
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0, v1, v4}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    .line 714
    :goto_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 715
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbAddonly:Z

    .line 717
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbAddonly:Z

    invoke-virtual {v0, p1, v1}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->changeAdapter(Ljava/util/ArrayList;Z)V

    .line 739
    :cond_8
    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    .line 740
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbLoacteCurrentItemPosition:Z

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mFirstVisibleItemIndex:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffset(Landroid/graphics/PointF;I)V

    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbLoacteCurrentItemPosition:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 746
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 700
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_6

    .line 701
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_1

    .line 711
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedToBindWithListViewAgain:Z

    goto :goto_2

    .line 720
    :cond_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbWidgetDestroy:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbDoOrientation:Z

    if-nez v0, :cond_8

    .line 721
    :cond_c
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedToBindWithListViewAgain:Z

    if-eqz v0, :cond_d

    .line 722
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0, v1, v4}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    .line 724
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbNeedToBindWithListViewAgain:Z

    .line 729
    :cond_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 730
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbAddonly:Z

    .line 732
    :cond_e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailListAdapter;

    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailListWidget;->mbAddonly:Z

    invoke-virtual {v0, p1, v1}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->changeAdapter(Ljava/util/ArrayList;Z)V

    goto :goto_3
.end method
