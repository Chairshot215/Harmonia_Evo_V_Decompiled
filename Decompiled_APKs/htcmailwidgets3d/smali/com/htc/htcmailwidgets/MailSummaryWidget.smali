.class public Lcom/htc/htcmailwidgets/MailSummaryWidget;
.super Lcom/htc/htcmailwidgets/MailWidgetBase;
.source "MailSummaryWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final sEMSG_BASE:I = 0x22b8

.field public static final sEMSG_EXTRACT_DATA:I = 0x22b9

.field private static final sMSG_BASE:I = 0x15b3

.field private static final sMSG_CANCEL_NOTIFY:I = 0x15bc

.field private static final sMSG_GET_INITIAL_DATA:I = 0x15b5

.field private static final sMSG_GET_MAIL_BODY_LINES:I = 0x15bb

.field private static final sMSG_LAUNCH_MAIL_DETAIL:I = 0x15bd

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

.field private mExtractDataHandler:Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

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

.field private mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

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

.field private mbNeedUpdateMailBodyMaxLines:Z

.field private mbNoScene:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

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

    .line 38
    const-string v0, "HTCWidget_MailSummaryWidget"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbItemPressed:Z

    .line 47
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedUpdateMailBodyMaxLines:Z

    .line 48
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbAutoSync:Z

    .line 49
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedForceAutoSync:Z

    .line 53
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInitialize:Z

    .line 54
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFromIntent:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedToBindWithListViewAgain:Z

    .line 101
    iput v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUnreadCounts:I

    .line 102
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNoScene:Z

    .line 103
    iput v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->m_nTiltStartFrame:I

    .line 104
    iput v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->m_nTiltEndFrame:I

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

    .line 603
    new-instance v0, Lcom/htc/htcmailwidgets/MailSummaryWidget$2;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget$2;-><init>(Lcom/htc/htcmailwidgets/MailSummaryWidget;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAppHitBoxTapListener:Lcom/htc/fusion/fx/MessageListener;

    .line 611
    new-instance v0, Lcom/htc/htcmailwidgets/MailSummaryWidget$3;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget$3;-><init>(Lcom/htc/htcmailwidgets/MailSummaryWidget;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/htcmailwidgets/MailSummaryWidget;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->extractCursorTask(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/htcmailwidgets/MailSummaryWidget;)Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    return-object v0
.end method

.method private extractCursorTask(Landroid/database/Cursor;)V
    .locals 8
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1256
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    .line 1258
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFromIntent:Z

    if-nez v0, :cond_6

    .line 1260
    iput v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailUpdateIndex:I

    .line 1286
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFirstRunQuery:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQuery:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1289
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFirstRunQuery:Z

    if-eqz v0, :cond_2

    .line 1290
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoFirstRunExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 1291
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFirstRunQuery:Z

    .line 1292
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFirstRunQueryCompleted:Z

    .line 1295
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQuery:Z

    if-eqz v0, :cond_3

    .line 1296
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoSecondRunExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 1297
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQuery:Z

    .line 1298
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFirstRunQueryCompleted:Z

    .line 1299
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQueryCompleted:Z

    .line 1304
    :cond_3
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedSecondRoundQuery:Z

    if-eqz v0, :cond_b

    .line 1305
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b8

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1306
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedSecondRoundQuery:Z

    .line 1308
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1309
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1310
    const/4 p1, 0x0

    .line 1353
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbIsESAStop:Z

    if-eqz v0, :cond_5

    .line 1354
    invoke-virtual {p0, v6}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->stopEascSync(Z)V

    .line 1355
    :cond_5
    :goto_2
    return-void

    .line 1261
    :cond_6
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbReQueryAll:Z

    if-nez v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMailIDs size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 1266
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1267
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1268
    const/4 p1, 0x0

    .line 1271
    :cond_8
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshMail:Z

    .line 1273
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQuery:Z

    if-eqz v0, :cond_9

    .line 1274
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQuery:Z

    .line 1275
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQueryCompleted:Z

    .line 1278
    :cond_9
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbIsESAStop:Z

    if-eqz v0, :cond_5

    .line 1279
    invoke-virtual {p0, v6}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->stopEascSync(Z)V

    goto :goto_2

    .line 1283
    :cond_a
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedMailChange:Z

    goto/16 :goto_0

    .line 1313
    :cond_b
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbReQueryAll:Z

    if-eqz v0, :cond_e

    .line 1314
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->isLastItemBoth(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbHasDeletedMail:Z

    if-nez v0, :cond_d

    .line 1316
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoRequeryAllExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 1317
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbReQueryAll:Z

    .line 1318
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbReQueryAllCompleted:Z

    .line 1319
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFirstRunQueryCompleted:Z

    .line 1320
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQueryCompleted:Z

    .line 1321
    iput v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mProcessIndex:I

    .line 1338
    :cond_c
    :goto_3
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedForceAutoSync:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_f

    .line 1339
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1391

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_1

    .line 1324
    :cond_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-wide v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoSecondRunExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V

    .line 1325
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQuery:Z

    .line 1326
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFirstRunQueryCompleted:Z

    .line 1327
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQueryCompleted:Z

    .line 1328
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbHasDeletedMail:Z

    goto :goto_3

    .line 1331
    :cond_e
    if-eqz p1, :cond_c

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1332
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1333
    const/4 p1, 0x0

    goto :goto_3

    .line 1340
    :cond_f
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQueryCompleted:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbReQueryAllCompleted:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedForceAutoSync:Z

    if-eqz v0, :cond_4

    :cond_10
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbAutoSync:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_4

    .line 1342
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_11

    .line 1343
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1344
    :cond_11
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimer:Ljava/util/Timer;

    .line 1345
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimerTast:Ljava/util/TimerTask;

    if-eqz v0, :cond_12

    .line 1346
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimerTast:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1347
    :cond_12
    new-instance v0, Lcom/htc/htcmailwidgets/MailWidgetBase$AutoSyncRemainingTimeOutTask;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$AutoSyncRemainingTimeOutTask;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimerTast:Ljava/util/TimerTask;

    .line 1348
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimerTast:Ljava/util/TimerTask;

    iget v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->TIME_OUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1
.end method

.method private getFxObjects()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 510
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 511
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 513
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 515
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 517
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 519
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 520
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 521
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 522
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 523
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 524
    :cond_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    aget-object v0, v0, v2

    check-cast v0, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 525
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 526
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 527
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 528
    :cond_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 529
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 530
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 531
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 532
    :cond_a
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 533
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 535
    :cond_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_HONEYCOMB:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne v0, v1, :cond_e

    :cond_c
    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    if-ne v0, v2, :cond_e

    .line 537
    :cond_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 538
    sget-boolean v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 540
    :cond_e
    return-void
.end method

.method private hideLoadMessage()V
    .locals 2

    .prologue
    .line 1890
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-eqz v0, :cond_1

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1892
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

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

    .line 544
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 546
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_0

    .line 547
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNoScene:Z

    .line 601
    :goto_0
    return-void

    .line 550
    :cond_0
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNoScene:Z

    .line 552
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 555
    iget v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mOrientation:I

    if-ne v1, v6, :cond_6

    .line 556
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObjPort:[Lcom/htc/fusion/fx/FxObject;

    invoke-virtual {v1}, [Lcom/htc/fusion/fx/FxObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/fusion/fx/FxObject;

    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 557
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getFxObjects()V

    .line 563
    :cond_1
    :goto_1
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a10

    invoke-virtual {v2, v3, v6, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 568
    :cond_2
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSense35:Z

    if-nez v1, :cond_3

    .line 569
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 570
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxButton;->setVisibility(Z)Ljava/util/ArrayList;

    .line 573
    :cond_3
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 574
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 575
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAppHitBoxTapListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 577
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mListBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 578
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mComposeBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 580
    sget v0, Lcom/htc/htcmailwidgets/LocalData;->mUpdateUIbyItems:I

    .line 581
    .local v0, val:I
    if-lez v0, :cond_4

    .line 582
    iput v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->MAILLIST_UPDATE_ITEMS:I

    .line 586
    :cond_4
    iget v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mOrientation:I

    if-ne v1, v6, :cond_7

    .line 587
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    sget-object v4, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_PORTRAIT:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/Components;->getWidgetItemPath(Lcom/htc/htcmailwidgets/Components$OS_VERSION;ILcom/htc/htcmailwidgets/Components$ORIENTATION;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 593
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->initTilt()V

    .line 595
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedToBindWithListViewAgain:Z

    .line 597
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 598
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 600
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->initReceiver()V

    goto/16 :goto_0

    .line 558
    .end local v0           #val:I
    :cond_6
    iget v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mOrientation:I

    if-ne v1, v7, :cond_1

    .line 559
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObjLand:[Lcom/htc/fusion/fx/FxObject;

    invoke-virtual {v1}, [Lcom/htc/fusion/fx/FxObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/fusion/fx/FxObject;

    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 560
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getFxObjects()V

    goto/16 :goto_1

    .line 589
    .restart local v0       #val:I
    :cond_7
    iget v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mOrientation:I

    if-ne v1, v7, :cond_5

    .line 590
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    sget-object v4, Lcom/htc/htcmailwidgets/Components$ORIENTATION;->EN_LANDSCAPE:Lcom/htc/htcmailwidgets/Components$ORIENTATION;

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/Components;->getWidgetItemPath(Lcom/htc/htcmailwidgets/Components$OS_VERSION;ILcom/htc/htcmailwidgets/Components$ORIENTATION;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private queryUnreadMail()V
    .locals 5

    .prologue
    .line 1221
    const/4 v0, -0x1

    .line 1223
    .local v0, unread:I
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-eqz v1, :cond_1

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 1228
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailUtils;->getAllUnreadMail(Landroid/content/Context;)I

    move-result v0

    .line 1233
    :goto_1
    iget v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUnreadCounts:I

    if-eq v1, v0, :cond_4

    if-nez v0, :cond_4

    .line 1234
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_2

    .line 1235
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "read_maill"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1240
    :cond_2
    :goto_2
    iput v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUnreadCounts:I

    .line 1242
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_0

    .line 1243
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a11

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1230
    :cond_3
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    invoke-static {v1, v2, v3}, Lcom/htc/htcmailwidgets/MailUtils;->getUnreadMail(Landroid/content/Context;J)I

    move-result v0

    goto :goto_1

    .line 1236
    :cond_4
    iget v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUnreadCounts:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUnreadCounts:I

    if-nez v1, :cond_2

    .line 1237
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_2

    .line 1238
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "notice_newmail"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private releaseData()V
    .locals 2

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbIsESAStop:Z

    if-eqz v0, :cond_0

    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->stopEascSync(Z)V

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->releaseControl()V

    .line 783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbWidgetDestroy:Z

    .line 785
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1390

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 786
    return-void
.end method

.method private setTaskBar()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x4248

    const/4 v4, 0x0

    .line 758
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 760
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v7}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v7}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxButton;->setFrame(F)V

    .line 763
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxButton;->setFrame(F)V

    .line 775
    :cond_3
    :goto_0
    return-void

    .line 766
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v6}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 767
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v6}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 770
    :cond_6
    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 771
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v5}, Lcom/htc/fusion/fx/controls/FxButton;->setFrame(F)V

    .line 772
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v5}, Lcom/htc/fusion/fx/controls/FxButton;->setFrame(F)V

    goto :goto_0
.end method

.method private showHeaderView(IJ)V
    .locals 5
    .parameter "count"
    .parameter "time"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1137
    if-lez p1, :cond_1

    move v0, v1

    .line 1138
    .local v0, bShow:Z
    :goto_0
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v3, :cond_4

    .line 1139
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v3, v0}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1140
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_4

    .line 1141
    if-nez v0, :cond_3

    .line 1142
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1144
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 1145
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mNoAccountAlert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1149
    :goto_1
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1163
    :cond_0
    :goto_2
    return-void

    .end local v0           #bShow:Z
    :cond_1
    move v0, v2

    .line 1137
    goto :goto_0

    .line 1147
    .restart local v0       #bShow:Z
    :cond_2
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mEmptyMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 1153
    :cond_3
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1160
    :cond_4
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x15b9

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1161
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a0e

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method private showLoadMessages()V
    .locals 2

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1883
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v1, Lcom/htc/htcmailwidgets/LocalData;->mLoadingString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1885
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 1886
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1887
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

    .line 957
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->hideLoadMessage()V

    .line 958
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 959
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 960
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_1

    .line 962
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mDefaultLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 964
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mNoAccountAlert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 965
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1007
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setTaskBar()V

    .line 1008
    return-void

    .line 966
    :cond_1
    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 968
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mDefaultLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 970
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mAccountHasBeenDeleted:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 973
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 974
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 975
    iput-object v8, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    .line 976
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->initialize()V

    .line 977
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    .line 980
    :cond_2
    invoke-virtual {p0, v8}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 982
    iput-wide v9, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    .line 984
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v1, :cond_3

    .line 985
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->setAccountID(J)V

    .line 987
    :cond_3
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshAccount:Z

    .line 988
    invoke-direct {p0, v6}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->updateNotificationCount(I)V

    goto :goto_0

    .line 992
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    .line 994
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 996
    iget v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mCursorCount:I

    if-lez v1, :cond_5

    .line 998
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 1001
    :cond_5
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_6

    .line 1002
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1003
    :cond_6
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v2, Lcom/htc/htcmailwidgets/LocalData;->mEmptyMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1004
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private stopLoadMessages()V
    .locals 2

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1878
    :cond_0
    return-void
.end method

.method private updateMailBodyMaxLines(I)V
    .locals 1
    .parameter "lines"

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->updateMaxLines(I)V

    .line 1251
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

    .line 1167
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbDoOrientation:Z

    if-eqz v0, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setTaskBar()V

    .line 1172
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_GINGERBREAD:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_ICS:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne v0, v1, :cond_6

    :cond_2
    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    .line 1173
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1174
    if-lez p1, :cond_5

    .line 1175
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1176
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 1177
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1178
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1180
    :cond_3
    if-gt p1, v4, :cond_4

    .line 1181
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 1183
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, "99+"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 1185
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1186
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 1193
    :cond_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1194
    if-lez p1, :cond_9

    .line 1195
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_7

    .line 1196
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1197
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1199
    :cond_7
    if-gt p1, v4, :cond_8

    .line 1200
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1202
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 1204
    :cond_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, "99+"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1206
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 1209
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1210
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1211
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method private updateTitle(Z)V
    .locals 4
    .parameter "isdefault"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_0

    .line 803
    :goto_0
    return-void

    .line 792
    :cond_0
    if-eqz p1, :cond_1

    .line 793
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v1, Lcom/htc/htcmailwidgets/LocalData;->mDefaultLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 802
    :goto_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 795
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 796
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public checkAccount()V
    .locals 18

    .prologue
    .line 807
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 808
    .local v16, start_time:J
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedSwitchAccount:Z

    .line 809
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshAccount:Z

    .line 810
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshMail:Z

    .line 811
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshFlag:Z

    .line 812
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    .line 813
    .local v7, acc_id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 814
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-nez v1, :cond_3

    const/4 v10, 0x0

    .line 815
    .local v10, count:I
    :goto_0
    if-nez v10, :cond_5

    .line 816
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-ltz v1, :cond_4

    .line 819
    const-wide/16 v7, -0x2

    .line 821
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAccountProperties(J)V

    .line 890
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    .line 892
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_11

    .line 893
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshMail:Z

    .line 896
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbHaveAccountName:Z

    .line 899
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getWhere()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWhere:Ljava/lang/String;

    .line 908
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_1

    .line 910
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a0d

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 911
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a10

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 950
    :cond_1
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 953
    .local v14, end_time:J
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInitialize:Z

    .line 954
    .end local v14           #end_time:J
    :cond_2
    :goto_4
    return-void

    .line 814
    .end local v10           #count:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v10, v1

    goto :goto_0

    .line 822
    .restart local v10       #count:I
    :cond_4
    const-wide/16 v1, -0x3

    cmp-long v1, v7, v1

    if-nez v1, :cond_0

    .line 823
    const-wide/16 v7, -0x2

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    goto :goto_1

    .line 824
    :cond_5
    if-lez v10, :cond_0

    .line 825
    const-wide/16 v1, -0x1

    cmp-long v1, v7, v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    if-ne v10, v1, :cond_7

    .line 827
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v11, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    .line 828
    .local v11, da_id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getAccountProperties(Lcom/htc/htcmailwidgets/MailUtils$Account;)V

    .line 829
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAccountProperties()V

    .line 830
    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-ltz v1, :cond_6

    .line 831
    move-wide v7, v11

    goto/16 :goto_1

    .line 833
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

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

    .line 835
    .end local v11           #da_id:J
    :cond_7
    const-wide/16 v1, -0x1

    cmp-long v1, v7, v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    if-gt v10, v1, :cond_0

    .line 837
    :cond_8
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-ltz v1, :cond_d

    .line 839
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v7, v1

    if-nez v1, :cond_9

    .line 840
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_0

    .line 841
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a10

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 843
    :cond_9
    const/4 v9, 0x0

    .line 845
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContentResolver:Landroid/content/ContentResolver;

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

    .line 846
    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 849
    :cond_a
    const-wide/16 v7, -0x2

    .line 851
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAccountProperties(J)V

    .line 859
    :cond_b
    :goto_5
    if-eqz v9, :cond_0

    .line 860
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 861
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 855
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_b

    .line 856
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a10

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 863
    :catch_0
    move-exception v13

    .line 864
    .local v13, e:Ljava/lang/Exception;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 865
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 871
    .end local v9           #c:Landroid/database/Cursor;
    .end local v13           #e:Ljava/lang/Exception;
    :cond_d
    const-wide/16 v1, -0x2

    cmp-long v1, v7, v1

    if-eqz v1, :cond_0

    .line 874
    const-wide/16 v1, -0x3

    cmp-long v1, v7, v1

    if-nez v1, :cond_f

    .line 876
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    .line 877
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v11, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    .line 878
    .restart local v11       #da_id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getAccountProperties(Lcom/htc/htcmailwidgets/MailUtils$Account;)V

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAccountProperties()V

    .line 880
    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-ltz v1, :cond_e

    .line 881
    move-wide v7, v11

    .line 882
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

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

    .line 884
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

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

    .line 887
    .end local v11           #da_id:J
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: checkAccount -- mAccountId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 902
    :cond_10
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountDefaultFolderId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getWhere(JI)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWhere:Ljava/lang/String;

    goto/16 :goto_2

    .line 914
    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbHaveAccountName:Z

    .line 917
    const/4 v1, 0x1

    if-le v10, v1, :cond_13

    .line 918
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->launchAccountOption()V

    .line 947
    :cond_12
    :goto_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWhere:Ljava/lang/String;

    goto/16 :goto_3

    .line 919
    :cond_13
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    if-nez v10, :cond_15

    .line 921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_14

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1771

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 923
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 925
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x15ba

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto :goto_6

    .line 926
    :cond_15
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_12

    const/4 v1, 0x1

    if-ne v10, v1, :cond_12

    .line 927
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getAccountProperties(Lcom/htc/htcmailwidgets/MailUtils$Account;)V

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAccountProperties()V

    .line 929
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshMail:Z

    .line 930
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbExtractMailBodyTerminated:Z

    .line 931
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInRefresh:Z

    if-nez v1, :cond_16

    .line 932
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbHaveAccountName:Z

    .line 934
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountDefaultFolderId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getWhere(JI)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWhere:Ljava/lang/String;

    .line 936
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x138d

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 937
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x138d

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 939
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_2

    .line 940
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1771

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 942
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

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
    .line 1357
    move-object v9, p1

    .line 1359
    .local v9, message:Landroid/os/Message;
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    if-nez v0, :cond_0

    .line 1360
    new-instance v0, Lcom/htc/htcmailwidgets/StopEASCSync;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/htcmailwidgets/StopEASCSync;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    .line 1362
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1772
    :cond_1
    :goto_0
    return-void

    .line 1364
    :sswitch_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_ON_STOP_EASC_SYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    if-eqz v0, :cond_1

    .line 1366
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/StopEASCSync;->forceStop()V

    goto :goto_0

    .line 1370
    :sswitch_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_ON_RESUME_EASC_SYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    if-eqz v0, :cond_1

    .line 1372
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/StopEASCSync;->forceResume()V

    goto :goto_0

    .line 1376
    :sswitch_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_PAUSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbIsESAStop:Z

    if-eqz v0, :cond_2

    .line 1379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->stopEascSync(Z)V

    .line 1381
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b8

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1382
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1383
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b4

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1384
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1385
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138f

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1386
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b5

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1387
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1390
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1391
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1772

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1392
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0b

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1393
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0c

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1394
    :cond_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0d

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1395
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0e

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1396
    :cond_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0f

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1397
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a10

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1398
    :cond_a
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a11

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1403
    :sswitch_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_RESUME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInitialize:Z

    if-nez v0, :cond_11

    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInitialize:Z

    .line 1409
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 1410
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_c

    .line 1411
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1412
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1413
    :cond_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1417
    :cond_c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1418
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1420
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_d

    .line 1421
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0d

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1438
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_f

    .line 1439
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0b

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1440
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0b

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1441
    :cond_e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0b

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1444
    :cond_f
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b4

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1445
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b4

    const-wide/16 v2, 0x5dc

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 1447
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15bc

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 1450
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_10

    .line 1451
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 1452
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a10

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1458
    :cond_10
    :goto_2
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedGetAutoSyncStatus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_1

    .line 1459
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1392

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1460
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1392

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1422
    :cond_11
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v0, v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedReloadAccountInfo:Z

    if-nez v0, :cond_12

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 1424
    :cond_12
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1393

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1425
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1393

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_1

    .line 1427
    :cond_13
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 1428
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 1435
    :cond_14
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedUpdateDataToUI:Z

    goto/16 :goto_1

    .line 1430
    :cond_15
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    goto :goto_3

    .line 1454
    :cond_16
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a10

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1466
    :sswitch_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_RESUME_DELAYED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedReloadAccountInfo:Z

    if-eqz v0, :cond_17

    .line 1470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshAccount:Z

    .line 1471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshMail:Z

    .line 1472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbTimeChanged:Z

    .line 1473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshDateTime:Z

    .line 1474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedUpdateContactStatus:Z

    .line 1475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRequeryUnreadMails:Z

    .line 1476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFirstRunQueryCompleted:Z

    .line 1477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQueryCompleted:Z

    .line 1478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbReQueryAllCompleted:Z

    .line 1479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedExtractMailCursor:Z

    .line 1480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFromIntent:Z

    .line 1481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbRefetchAllMails:Z

    .line 1482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbHasNewMailComingNotify:Z

    .line 1483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedUpdateDataToUI:Z

    .line 1484
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138b

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1485
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138b

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1490
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbDoOrientation:Z

    .line 1492
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshAccount:Z

    if-eqz v0, :cond_1c

    .line 1493
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1494
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1518
    :cond_18
    :goto_4
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedUpdateDataToUI:Z

    if-eqz v0, :cond_19

    .line 1519
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_19

    .line 1520
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1772

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedUpdateDataToUI:Z

    .line 1525
    :cond_19
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRequeryUnreadMails:Z

    if-eqz v0, :cond_1a

    .line 1526
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1527
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRequeryUnreadMails:Z

    .line 1532
    :cond_1a
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedUpdateMailBodyMaxLines:Z

    if-eqz v0, :cond_1

    .line 1533
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_1b

    .line 1534
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1535
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedUpdateMailBodyMaxLines:Z

    goto/16 :goto_0

    .line 1495
    :cond_1c
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshMail:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedSecondRoundQuery:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbHasNewMailComingNotify:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbRefetchAllMails:Z

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mCursorCount:I

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1e

    :cond_1d
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 1497
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1499
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    const-wide/16 v2, 0x320

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 1501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedSecondRoundQuery:Z

    .line 1502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRequeryUnreadMails:Z

    goto :goto_4

    .line 1506
    :cond_1e
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedForceAutoSync:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_1f

    .line 1507
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1391

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1508
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1391

    const-wide/16 v2, 0x320

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto/16 :goto_4

    .line 1511
    :cond_1f
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_18

    .line 1512
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1513
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1514
    :cond_20
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 1542
    :sswitch_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_START_CHECK_ACCOUNT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->checkAccount()V

    goto/16 :goto_0

    .line 1549
    :sswitch_6
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbWidgetDestroy:Z

    if-nez v0, :cond_1

    .line 1552
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_START_QUERY_MAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailUpdateIndex:I

    .line 1554
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshFlag:Z

    .line 1557
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedExtractMailCursor:Z

    if-nez v0, :cond_21

    .line 1559
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mProcessIndex:I

    .line 1562
    :cond_21
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshMail:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbRefetchAllMails:Z

    if-eqz v0, :cond_22

    .line 1563
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->startMissedMessageQuery()V

    goto/16 :goto_0

    .line 1565
    :cond_22
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->startMissedMessageQuery2()V

    goto/16 :goto_0

    .line 1571
    :sswitch_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_START_QUERY_FLAG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshFlag:Z

    .line 1573
    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountProtocol:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 1578
    :sswitch_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_GET_INITIAL_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b5

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1581
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/htcmailwidgets/MailSummaryWidget$4;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget$4;-><init>(Lcom/htc/htcmailwidgets/MailSummaryWidget;)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1587
    .local v10, thread:Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1592
    .end local v10           #thread:Ljava/lang/Thread;
    :sswitch_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleUiMessage: sMSG_SECOND_ROUND_QUERY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/htcmailwidgets/MailSummaryWidget$5;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget$5;-><init>(Lcom/htc/htcmailwidgets/MailSummaryWidget;)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1600
    .restart local v10       #thread:Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1605
    .end local v10           #thread:Ljava/lang/Thread;
    :sswitch_a
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_QUERY_UNREAD_MAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbWidgetDestroy:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbDoOrientation:Z

    if-nez v0, :cond_24

    .line 1607
    :cond_23
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->queryUnreadMail()V

    goto/16 :goto_0

    .line 1609
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRequeryUnreadMails:Z

    goto/16 :goto_0

    .line 1613
    :sswitch_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 1615
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-eqz v0, :cond_1

    .line 1616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshAccount:Z

    goto/16 :goto_0

    .line 1622
    :sswitch_c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_LAUNCH_PROVIDER_SCREEN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->launchProviderListScreen()V

    goto/16 :goto_0

    .line 1626
    :sswitch_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_GET_MAIL_BODY_LINES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->queryMailBodyMaxLines()V

    goto/16 :goto_0

    .line 1630
    :sswitch_e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_SYNC_MAIL_SETTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15bb

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1632
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15bb

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1636
    :sswitch_f
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_RELOAD_ACCOUNT_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 1638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedReloadAccountInfo:Z

    .line 1639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbAccountAssigned:Z

    .line 1640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWhere:Ljava/lang/String;

    .line 1642
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_25

    .line 1643
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetId:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->removeAccountMap(JLjava/lang/String;IZ)V

    .line 1646
    :cond_25
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    if-nez v0, :cond_27

    .line 1647
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    .line 1648
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAccountProperties(J)V

    .line 1649
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_26

    .line 1650
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1651
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a10

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1653
    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 1654
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15ba

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto/16 :goto_0

    .line 1656
    :cond_27
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2c

    .line 1657
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailUtils;->isAccountDelete([Lcom/htc/htcmailwidgets/MailUtils$Account;J)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    .line 1658
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    .line 1659
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAccountProperties(J)V

    .line 1660
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_28

    .line 1661
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1662
    :cond_28
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->launchAccountOption()V

    .line 1663
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    goto/16 :goto_0

    .line 1665
    :cond_29
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-nez v0, :cond_2b

    .line 1667
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getAccountName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    .line 1668
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAccountProperties()V

    .line 1669
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_2a

    .line 1670
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a10

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1672
    :cond_2a
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1673
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1675
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v0, :cond_1

    .line 1676
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->clear()V

    goto/16 :goto_0

    .line 1679
    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshMail:Z

    goto/16 :goto_0

    .line 1681
    :cond_2c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1682
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getAccountProperties(Lcom/htc/htcmailwidgets/MailUtils$Account;)V

    .line 1683
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAccountProperties()V

    .line 1684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshMail:Z

    .line 1685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbExtractMailBodyTerminated:Z

    .line 1686
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInRefresh:Z

    if-nez v0, :cond_2d

    .line 1687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbHaveAccountName:Z

    .line 1689
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    iget v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountDefaultFolderId:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getWhere(JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWhere:Ljava/lang/String;

    .line 1691
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1692
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1694
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v0, :cond_2d

    .line 1695
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->clear()V

    .line 1698
    :cond_2d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_2e

    .line 1699
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1701
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a10

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1704
    :cond_2e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v0, :cond_1

    .line 1705
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->setAccountID(J)V

    goto/16 :goto_0

    .line 1712
    :sswitch_10
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sMSG_CANCEL_NOTIFY>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-nez v0, :cond_1

    .line 1714
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1715
    .local v6, i:Landroid/content/Intent;
    const-string v0, "com.htc.android.mail"

    const-string v1, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1716
    const-string v0, "com.htc.android.mail.intent.action.ACTION_CANCEL_NOTIFIY"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1717
    const-string v0, "AccountId"

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1719
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1725
    .end local v6           #i:Landroid/content/Intent;
    :sswitch_11
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_GET_AUTOSYNC_STATUS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-nez v0, :cond_2f

    .line 1727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedGetAutoSyncStatus:Z

    .line 1728
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->isAutoSync(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbAutoSync:Z

    goto/16 :goto_0

    .line 1730
    :cond_2f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedGetAutoSyncStatus:Z

    goto/16 :goto_0

    .line 1734
    :sswitch_12
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_AUTO_SYNC_REMAINING_TIME_OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-nez v0, :cond_30

    .line 1736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedForceAutoSync:Z

    .line 1737
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->syncMail()V

    goto/16 :goto_0

    .line 1739
    :cond_30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedForceAutoSync:Z

    goto/16 :goto_0

    .line 1743
    :sswitch_13
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->releaseControl()V

    .line 1745
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->initLayout()V

    .line 1747
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_31

    .line 1748
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailDataManager;->onResetOrientation(I)V

    .line 1750
    :cond_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRequeryUnreadMails:Z

    .line 1751
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUnreadCounts:I

    .line 1753
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-nez v0, :cond_1

    .line 1756
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1389

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1760
    :sswitch_14
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: sMSG_LAUNCH_MAIL_DETAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget v7, v9, Landroid/os/Message;->arg1:I

    .line 1763
    .local v7, index:I
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1764
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

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

    .line 1765
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0, v7}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v8

    .line 1766
    .local v8, mail:Lcom/htc/htcmailwidgets/MailData;
    iget v1, v8, Lcom/htc/htcmailwidgets/MailData;->mId:I

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountProtocol:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_32

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->launchDetail(ILjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_32
    const/4 v0, 0x0

    goto :goto_5

    .line 1362
    nop

    :sswitch_data_0
    .sparse-switch
        0x1388 -> :sswitch_2
        0x1389 -> :sswitch_3
        0x138a -> :sswitch_13
        0x138b -> :sswitch_f
        0x138c -> :sswitch_e
        0x138d -> :sswitch_6
        0x138e -> :sswitch_5
        0x138f -> :sswitch_0
        0x1390 -> :sswitch_1
        0x1391 -> :sswitch_12
        0x1392 -> :sswitch_11
        0x1393 -> :sswitch_b
        0x15b4 -> :sswitch_4
        0x15b5 -> :sswitch_8
        0x15b6 -> :sswitch_7
        0x15b8 -> :sswitch_9
        0x15b9 -> :sswitch_a
        0x15ba -> :sswitch_c
        0x15bb -> :sswitch_d
        0x15bc -> :sswitch_10
        0x15bd -> :sswitch_14
    .end sparse-switch
.end method

.method public handleUIMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1775
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1873
    :cond_0
    :goto_0
    return-void

    .line 1778
    :sswitch_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleUiMessage: sUIMSG_UPDATE_MAILDATA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v0, :cond_1

    .line 1781
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->setAccountID(J)V

    .line 1783
    :cond_1
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbItemPressed:Z

    if-nez v0, :cond_2

    .line 1784
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailDataList(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 1785
    iput-boolean v4, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedUpdateDataToUI:Z

    goto :goto_0

    .line 1787
    :cond_2
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedUpdateDataToUI:Z

    goto :goto_0

    .line 1792
    :sswitch_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleUiMessage: sUIMSG_WIDGET_SHOW_PANEL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-nez v0, :cond_0

    .line 1794
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->showPanel()V

    goto :goto_0

    .line 1799
    :sswitch_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbWidgetDestroy:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbDoOrientation:Z

    if-nez v0, :cond_5

    .line 1800
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1801
    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 1802
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "play"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1807
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_0

    .line 1808
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0b

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    goto :goto_0

    .line 1803
    :cond_6
    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 1804
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "mail_open"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_1

    .line 1813
    :sswitch_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbWidgetDestroy:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbDoOrientation:Z

    if-nez v0, :cond_9

    .line 1814
    :cond_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1816
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_0

    .line 1817
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1a0c

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1820
    :sswitch_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_a

    .line 1821
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1822
    :cond_a
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->showLoadMessages()V

    goto/16 :goto_0

    .line 1825
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->hideLoadMessage()V

    goto/16 :goto_0

    .line 1829
    :sswitch_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_b

    .line 1830
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1831
    :cond_b
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->stopLoadMessages()V

    goto/16 :goto_0

    .line 1834
    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_c

    .line 1835
    invoke-direct {p0, v3}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->updateTitle(Z)V

    goto/16 :goto_0

    .line 1837
    :cond_c
    invoke-direct {p0, v4}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->updateTitle(Z)V

    goto/16 :goto_0

    .line 1840
    :sswitch_8
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-nez v0, :cond_d

    .line 1841
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->updateNotificationCount(I)V

    goto/16 :goto_0

    .line 1843
    :cond_d
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRequeryUnreadMails:Z

    goto/16 :goto_0

    .line 1846
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->showHeaderView(IJ)V

    goto/16 :goto_0

    .line 1851
    :sswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_e

    .line 1852
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMaxLines:I

    .line 1854
    :cond_e
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-nez v0, :cond_f

    .line 1855
    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMaxLines:I

    invoke-direct {p0, v0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->updateMailBodyMaxLines(I)V

    .line 1856
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_0

    .line 1857
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v1, 0x1772

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1860
    :cond_f
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedUpdateMailBodyMaxLines:Z

    goto/16 :goto_0

    .line 1865
    :sswitch_b
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbHasUnreadMail:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_10

    .line 1866
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1867
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "notice_newmail"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1870
    :cond_10
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b9

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1775
    :sswitch_data_0
    .sparse-switch
        0x1770 -> :sswitch_a
        0x1771 -> :sswitch_1
        0x1772 -> :sswitch_0
        0x1773 -> :sswitch_b
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
    .line 387
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "tilt"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 389
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v0, :cond_0

    .line 390
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->m_nTiltStartFrame:I

    .line 391
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->m_nTiltEndFrame:I

    .line 394
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
    .line 404
    invoke-super {p0, p1, p2, p3}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 405
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

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

    .line 406
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_1

    const/16 v0, 0x2711

    if-ne p2, v0, :cond_1

    .line 407
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshMail:Z

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbRefetchAllMails:Z

    .line 411
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 413
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 416
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIntExtractDataPosition:I

    .line 418
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailDataManager;->resetAccountMap(JLjava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIntExtractDataPosition:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->setExtractionDataPosition(JLjava/lang/String;I)V

    .line 425
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_6

    .line 426
    :cond_2
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 427
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    .line 430
    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshAccount:Z

    .line 505
    :cond_4
    :goto_1
    return-void

    .line 428
    :cond_5
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 429
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    goto :goto_0

    .line 434
    :cond_6
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_7

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshAccount:Z

    goto :goto_1

    .line 439
    :cond_7
    const-string v0, "ACCOUNT_ID"

    const-wide/16 v1, -0x9

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 441
    .local v6, acc:J
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_8

    .line 442
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetId:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->removeAccountMap(JLjava/lang/String;IZ)V

    .line 446
    :cond_8
    iget-wide v8, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    .line 449
    .local v8, localAccountid:J
    const-wide v0, 0x7fffffffffffffffL

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 450
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    .line 453
    :goto_2
    const-string v0, "ACCOUNT_PROTOCOL"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountProtocol:I

    .line 454
    const-string v0, "ACCOUNT_DEFAULTFOLDER"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountDefaultFolderId:I

    .line 455
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 456
    iput-wide v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    .line 459
    :cond_9
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedSwitchAccount:Z

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFirstRunQueryCompleted:Z

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQueryCompleted:Z

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedExtractMailCursor:Z

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFromIntent:Z

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbRefetchAllMails:Z

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbAccountAssigned:Z

    .line 467
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mFirstVisibleItemIndex:Landroid/graphics/PointF;

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbLoacteCurrentItemPosition:Z

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWhere:Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v0, :cond_a

    .line 472
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->setAccountID(J)V

    .line 478
    :cond_a
    iget-wide v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    .line 480
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAccountProperties()V

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshAccount:Z

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedRefreshMail:Z

    .line 483
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 484
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x138e

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 486
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 487
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 488
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 491
    :cond_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 492
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 493
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 496
    :cond_c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v0, :cond_d

    .line 497
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->clear()V

    .line 499
    :cond_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mOrientation:I

    goto/16 :goto_1

    .line 452
    :cond_e
    const-string v0, "ACCOUNT_NAME"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    goto/16 :goto_2

    .line 504
    :cond_f
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->launchProviderListScreen()V

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfiguration"

    .prologue
    const/4 v2, 0x1

    .line 360
    invoke-super {p0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 362
    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_3

    .line 363
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbDoOrientation:Z

    .line 366
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mOrientation:I

    .line 367
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getScrollOffset()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mFirstVisibleItemIndex:Landroid/graphics/PointF;

    .line 370
    :cond_0
    iput-boolean v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbLoacteCurrentItemPosition:Z

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_2

    .line 374
    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mOrientation:I

    if-ne v0, v2, :cond_4

    .line 375
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->onWidgetPortrait()V

    .line 382
    :cond_2
    :goto_1
    return-void

    .line 365
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbDoOrientation:Z

    goto :goto_0

    .line 376
    :cond_4
    iget v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 377
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->onWidgetLandscape()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedState"

    .prologue
    const/16 v10, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 131
    invoke-super {p0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-static {}, Lcom/htc/htcmailwidgets/MailUtils;->getSenseVersion()I

    move-result v5

    const/4 v8, 0x5

    if-lt v5, v8, :cond_c

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSense30:Z

    .line 134
    invoke-static {}, Lcom/htc/htcmailwidgets/MailUtils;->getSenseVersion()I

    move-result v5

    const/4 v8, 0x6

    if-lt v5, v8, :cond_0

    move v7, v6

    :cond_0
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSense35:Z

    .line 135
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getWidgetContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 139
    .local v0, WinManager:Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 140
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 141
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Lcom/htc/htcmailwidgets/Components;->getResolution(II)I

    move-result v5

    iput v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    .line 144
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 146
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.htc.android.rosie.intent.extra.STYLE_SCENE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mSceneSetting:Ljava/lang/String;

    .line 148
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mSceneSetting:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getWidgetInfo()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mSceneSetting:Ljava/lang/String;

    .line 152
    :cond_1
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mSceneSetting:Ljava/lang/String;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/htc/htcmailwidgets/Components;->parseScene(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    .line 154
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    if-gez v5, :cond_2

    .line 155
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    sget-object v7, Lcom/htc/htcmailwidgets/Components$OS_VERSION;->EN_HONEYCOMB:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    if-ne v5, v7, :cond_d

    .line 156
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    const/4 v7, 0x3

    iput v7, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    .line 161
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mOrientation:I

    .line 163
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-nez v5, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getWidgetContext()Landroid/content/Context;

    move-result-object v5

    iget v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v9, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mOrientation:I

    invoke-static {v5, v7, v8, v9}, Lcom/htc/htcmailwidgets/MailDataManager;->getInstance(Landroid/content/Context;ILcom/htc/htcmailwidgets/Components$OS_VERSION;I)Lcom/htc/htcmailwidgets/MailDataManager;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    .line 166
    :cond_3
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->preloadScene()V

    .line 168
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 170
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mQueryHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

    if-nez v5, :cond_4

    .line 171
    new-instance v5, Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v5, p0, v7}, Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mQueryHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$QueryHandler;

    .line 174
    :cond_4
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbRefetchAllMails:Z

    .line 176
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v5

    new-instance v7, Lcom/htc/htcmailwidgets/MailWidgetBase$WidgetHandler;

    invoke-direct {v7, p0}, Lcom/htc/htcmailwidgets/MailWidgetBase$WidgetHandler;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    invoke-interface {v5, v7}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 178
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-nez v5, :cond_5

    .line 179
    new-instance v4, Landroid/os/HandlerThread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MailSummaryWidget("

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

    .line 180
    .local v4, thread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 181
    new-instance v5, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;-><init>(Lcom/htc/htcmailwidgets/MailWidgetBase;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    .line 184
    .end local v4           #thread:Landroid/os/HandlerThread;
    :cond_5
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

    if-nez v5, :cond_6

    .line 185
    new-instance v4, Landroid/os/HandlerThread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MailSummaryWidget("

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

    .line 186
    .restart local v4       #thread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 187
    new-instance v5, Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;-><init>(Lcom/htc/htcmailwidgets/MailSummaryWidget;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

    .line 190
    .end local v4           #thread:Landroid/os/HandlerThread;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->releaseControl()V

    .line 192
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->initLayout()V

    .line 196
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->initialize()V

    .line 200
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v5, :cond_7

    .line 202
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v7, 0x1a0f

    invoke-virtual {v5, v7}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 205
    :cond_7
    new-instance v5, Lcom/htc/htcmailwidgets/StopEASCSync;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/htc/htcmailwidgets/StopEASCSync;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    .line 207
    iget-boolean v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbEnableAutoSync:Z

    if-eqz v5, :cond_8

    .line 208
    new-instance v5, Lcom/htc/htcmailwidgets/MailSummaryWidget$1;

    invoke-direct {v5, p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget$1;-><init>(Lcom/htc/htcmailwidgets/MailSummaryWidget;)V

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 219
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v6, v5}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 224
    :cond_8
    iget v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetId:I

    if-gez v5, :cond_9

    .line 225
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getWidgetID()I

    move-result v5

    iput v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetId:I

    .line 228
    :cond_9
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 229
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

    .line 233
    :cond_a
    iput-boolean v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbLocalKorea:Z

    .line 237
    :cond_b
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailUtils;->getFacebookIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbmFacebookIcon:Landroid/graphics/Bitmap;

    .line 238
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v7, v7, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v5, v6, v7}, Lcom/htc/htcmailwidgets/Components;->getWidgetPhotoSizeX(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)I

    move-result v5

    iput v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mPhotoSizeX:I

    .line 239
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v6, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mResolution:I

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v7, v7, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v5, v6, v7}, Lcom/htc/htcmailwidgets/Components;->getWidgetPhotoSizeX(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)I

    move-result v5

    iput v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mPhotoSizeY:I

    .line 241
    return-void

    .end local v0           #WinManager:Landroid/view/WindowManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    :cond_c
    move v5, v7

    .line 133
    goto/16 :goto_0

    .line 158
    .restart local v0       #WinManager:Landroid/view/WindowManager;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #metrics:Landroid/util/DisplayMetrics;
    :cond_d
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iput v6, v5, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 262
    invoke-super {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onDestroy()V

    .line 264
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->releaseData()V

    .line 266
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->removeAllMsg()V

    .line 268
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 270
    :cond_0
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    .line 272
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 274
    :cond_1
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    .line 275
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 277
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 279
    .local v6, looper:Landroid/os/Looper;
    if-eqz v6, :cond_2

    .line 280
    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    .line 281
    const/4 v6, 0x0

    .line 283
    :cond_2
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    .line 286
    .end local v6           #looper:Landroid/os/Looper;
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

    if-eqz v0, :cond_5

    .line 287
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 288
    .restart local v6       #looper:Landroid/os/Looper;
    if-eqz v6, :cond_4

    .line 289
    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    .line 290
    const/4 v6, 0x0

    .line 292
    :cond_4
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

    .line 295
    .end local v6           #looper:Landroid/os/Looper;
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 296
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    :cond_6
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->releaseControl()V

    .line 301
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 302
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObjPort:[Lcom/htc/fusion/fx/FxObject;

    .line 303
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->fxControlObjLand:[Lcom/htc/fusion/fx/FxObject;

    .line 305
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 306
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 307
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 309
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbEnableAutoSync:Z

    if-eqz v0, :cond_8

    .line 310
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 311
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 312
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 314
    :cond_7
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 317
    :cond_8
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mStopEASCSync:Lcom/htc/htcmailwidgets/StopEASCSync;

    .line 319
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 320
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 321
    :cond_9
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailInfo:Ljava/util/ArrayList;

    .line 323
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 324
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 325
    :cond_a
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailIDs:Ljava/util/ArrayList;

    .line 327
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAppHitBoxTapListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_b

    .line 328
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAppHitBoxTapListener:Lcom/htc/fusion/fx/MessageListener;

    .line 330
    :cond_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_c

    .line 331
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 333
    :cond_c
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_d

    .line 334
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 336
    :cond_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_e

    .line 337
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 339
    :cond_e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_f

    .line 340
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 341
    :cond_f
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimer:Ljava/util/Timer;

    .line 343
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimerTast:Ljava/util/TimerTask;

    if-eqz v0, :cond_10

    .line 344
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimerTast:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 345
    :cond_10
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTimerTast:Ljava/util/TimerTask;

    .line 348
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v0, :cond_11

    .line 349
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->clear()V

    .line 350
    :cond_11
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    .line 352
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_12

    .line 353
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetId:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailDataManager;->removeAccountMap(JLjava/lang/String;IZ)V

    .line 354
    :cond_12
    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    .line 356
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    .line 255
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 256
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->onWidgetPause()V

    .line 257
    invoke-super {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onPause()V

    .line 258
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

    .line 1011
    if-nez p3, :cond_6

    .line 1012
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbRefetchAllMails:Z

    .line 1013
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbHasNewMailComingNotify:Z

    .line 1015
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoEmptyData(JLjava/lang/String;)V

    .line 1017
    :cond_0
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_1

    .line 1018
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a12

    invoke-virtual {v2, v3, v5, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1020
    :cond_1
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v1, :cond_2

    .line 1021
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v1}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1022
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 1025
    :cond_2
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_4

    .line 1026
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1027
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1028
    :cond_3
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1031
    :cond_4
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbIsESAStop:Z

    if-eqz v1, :cond_5

    .line 1032
    invoke-virtual {p0, v5}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->stopEascSync(Z)V

    .line 1134
    :cond_5
    :goto_0
    return-void

    .line 1037
    :cond_6
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_b

    .line 1038
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbRefetchAllMails:Z

    .line 1039
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbHasNewMailComingNotify:Z

    .line 1041
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v1, :cond_7

    .line 1042
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->onDoEmptyData(JLjava/lang/String;)V

    .line 1044
    :cond_7
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v1, :cond_8

    .line 1045
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v1}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_8

    .line 1046
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 1049
    :cond_8
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_a

    .line 1050
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1051
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->removeMessages(I)V

    .line 1052
    :cond_9
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 1054
    :cond_a
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1056
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbIsESAStop:Z

    if-eqz v1, :cond_5

    .line 1057
    invoke-virtual {p0, v5}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->stopEascSync(Z)V

    goto :goto_0

    .line 1062
    :cond_b
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    if-nez v1, :cond_17

    .line 1070
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIntExtractDataPosition:I

    if-ge v1, v2, :cond_c

    .line 1071
    iput v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIntExtractDataPosition:I

    .line 1072
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v1, :cond_c

    .line 1073
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIntExtractDataPosition:I

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager;->onSetExtractDataCount(I)V

    .line 1075
    :cond_c
    const/16 v1, 0xa

    if-ne p1, v1, :cond_f

    .line 1078
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "First query 10 mails back, prepare to extract data and update ui"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedSecondRoundQuery:Z

    .line 1080
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbFirstRunQuery:Z

    .line 1081
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1082
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1083
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1084
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

    if-eqz v1, :cond_d

    .line 1085
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

    invoke-virtual {v1, v0}, Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1087
    :cond_d
    if-eqz p3, :cond_e

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1088
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1089
    :cond_e
    const/4 p3, 0x0

    goto/16 :goto_0

    .line 1091
    .end local v0           #msg:Landroid/os/Message;
    :cond_f
    if-eq p1, v7, :cond_10

    const/16 v1, 0x1e

    if-ne p1, v1, :cond_5

    .line 1093
    :cond_10
    if-ne p1, v7, :cond_14

    .line 1095
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Second query all mails back, prepare to extract data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSecondRunQuery:Z

    .line 1098
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1099
    .restart local v0       #msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1100
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1101
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

    if-eqz v1, :cond_12

    .line 1102
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

    invoke-virtual {v1, v0}, Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1126
    .end local v0           #msg:Landroid/os/Message;
    :cond_11
    :goto_1
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v1, :cond_5

    .line 1127
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v3, 0x1a12

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1104
    .restart local v0       #msg:Landroid/os/Message;
    :cond_12
    if-eqz p3, :cond_13

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1105
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1106
    :cond_13
    const/4 p3, 0x0

    goto :goto_1

    .line 1108
    .end local v0           #msg:Landroid/os/Message;
    :cond_14
    const/16 v1, 0x1e

    if-ne p1, v1, :cond_11

    .line 1110
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Requery all mails back, prepare to extract data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbReQueryAll:Z

    .line 1112
    iput-boolean v5, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbReQueryAllCompleted:Z

    .line 1113
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1114
    .restart local v0       #msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1115
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1116
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

    if-eqz v1, :cond_15

    .line 1117
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mExtractDataHandler:Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;

    invoke-virtual {v1, v0}, Lcom/htc/htcmailwidgets/MailSummaryWidget$ExtractDataHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1119
    :cond_15
    if-eqz p3, :cond_16

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1120
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1121
    :cond_16
    const/4 p3, 0x0

    goto :goto_1

    .line 1130
    .end local v0           #msg:Landroid/os/Message;
    :cond_17
    if-eqz p3, :cond_18

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1131
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1132
    :cond_18
    const/4 p3, 0x0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbInvisible:Z

    .line 246
    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbLaunchMailApp:Z

    .line 247
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1389

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 248
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->onWidgetResume()V

    .line 249
    invoke-super {p0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->onResume()V

    .line 250
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 3
    .parameter "tilt"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->m_nTiltStartFrame:I

    iget v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->m_nTiltEndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 400
    :cond_0
    return-void
.end method

.method public releaseControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 639
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 641
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 643
    :cond_0
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 645
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 647
    :cond_1
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 649
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 651
    :cond_2
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mIconTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 653
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 654
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 655
    :cond_3
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 657
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_4

    .line 658
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 659
    :cond_4
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mNotifyTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 661
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbSense35:Z

    if-nez v0, :cond_6

    .line 662
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_5

    .line 663
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 664
    :cond_5
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 667
    :cond_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_7

    .line 668
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mListBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 669
    :cond_7
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mLeftBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 671
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_8

    .line 672
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mComposeBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 673
    :cond_8
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mRightBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 675
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_9

    .line 676
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAppHitBoxTapListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 677
    :cond_9
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 679
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
    const/16 v4, 0xa

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 683
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbWidgetDestroy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbDoOrientation:Z

    if-eqz v0, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    if-nez p1, :cond_4

    .line 687
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v0, :cond_3

    .line 690
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v2, 0x1a12

    invoke-virtual {v1, v2, v3, v3}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 692
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->clear()V

    .line 694
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 698
    :cond_4
    if-eqz p1, :cond_6

    .line 699
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 700
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_5

    .line 701
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 702
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v0, :cond_6

    .line 703
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->clear()V

    .line 704
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->notifyDataSetChanged()V

    .line 712
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-nez v0, :cond_b

    .line 713
    new-instance v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    invoke-direct {v0, v1, p1, v2}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/htc/htcmailwidgets/Components$WidgetInfo;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    .line 714
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->setAccountID(J)V

    .line 715
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedToBindWithListViewAgain:Z

    if-eqz v0, :cond_a

    .line 716
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0, v1, v4}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    .line 721
    :goto_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 722
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbAddonly:Z

    .line 724
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbAddonly:Z

    invoke-virtual {v0, p1, v1}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->changeAdapter(Ljava/util/ArrayList;Z)V

    .line 746
    :cond_8
    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    .line 747
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbLoacteCurrentItemPosition:Z

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mFirstVisibleItemIndex:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffset(Landroid/graphics/PointF;I)V

    .line 749
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbLoacteCurrentItemPosition:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 753
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 707
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_6

    .line 708
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_1

    .line 718
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedToBindWithListViewAgain:Z

    goto :goto_2

    .line 727
    :cond_b
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbWidgetDestroy:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbDoOrientation:Z

    if-nez v0, :cond_8

    .line 728
    :cond_c
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedToBindWithListViewAgain:Z

    if-eqz v0, :cond_d

    .line 729
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0, v1, v4}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    .line 731
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbNeedToBindWithListViewAgain:Z

    .line 736
    :cond_d
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 737
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbAddonly:Z

    .line 739
    :cond_e
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mbAddonly:Z

    invoke-virtual {v0, p1, v1}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->changeAdapter(Ljava/util/ArrayList;Z)V

    goto :goto_3
.end method
