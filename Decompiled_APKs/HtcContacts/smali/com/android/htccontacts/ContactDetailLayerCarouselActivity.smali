.class public Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
.super Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;
.source "ContactDetailLayerCarouselActivity.java"

# interfaces
.implements Lcom/android/htccontacts/util/ContactUriLookupListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;,
        Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorRunnable;,
        Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;,
        Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$ContactAccount;,
        Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$ClosePreviousActivityHandler;,
        Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;
    }
.end annotation


# static fields
.field public static final ACCOUNT_STATUS_JOIN:I = 0x1

.field public static final ACCOUNT_STATUS_NOT_JOIN:I = 0x0

.field public static final ACCOUNT_STATUS_UNKNOWN:I = -0x1

.field private static final ACTION_MESSAGE_TAB_ENTER:Ljava/lang/String; = "com.android.mms.ACTION_MESSAGE_TAB_ENTER"

.field private static final ACTION_MESSAGE_TAB_LEAVE:Ljava/lang/String; = "com.android.mms.ACTION_MESSAGE_TAB_LEAVE"

.field public static final CONTACT_TYPE_NORMAL:I = 0x3

.field public static final CONTACT_TYPE_SIM:I = 0x1

.field public static final CONTACT_TYPE_SPECIAL:I = 0x4

.field public static final CONTACT_TYPE_UNKNOWN:I = 0x2

.field public static final CONTACT_TYPE_UNKNOWN_MAIL:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DEFAULT_TAB_ORDER:Ljava/lang/String; = "ME_MA_UE_GA_CH"

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_ALBUM_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_ALBUM_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_ALBUM_REST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_CALL_HISTORY_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_CALL_HISTORY_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_CALL_HISTORY_REST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_COMMUNICATION_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_COMMUNICATION_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_COMMUNICATION_REST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_CONTACT_CARD_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_CONTACT_CARD_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_CONTACT_CARD_REST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_MAIL_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_MAIL_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_MAIL_REST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_MESSAGE_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_MESSAGE_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_MESSAGE_REST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_PLUGIN_ALBUM_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_PLUGIN_ALBUM_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_PLUGIN_ALBUM_REST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_UPDATES_AND_EVENTS_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_UPDATES_AND_EVENTS_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_UPDATES_AND_EVENTS_REST:I = 0x0

.field private static final MSG_CONTACTS_CHANGED:I = 0x3e8

.field private static final MSG_NOTIFY_CONTACT_INFO_INIT:I = 0x44f

.field private static final MSG_NOTIFY_URI_READY:I = 0x44e

.field public static final PLUGIN_FEATURE:Ljava/lang/String; = "AddDetailLayerTab"

.field public static final TAB_ABBR_CALL_HISTORY:Ljava/lang/String; = "CH"

.field public static final TAB_ABBR_GALLERY:Ljava/lang/String; = "GA"

.field public static final TAB_ABBR_MAIL:Ljava/lang/String; = "MA"

.field public static final TAB_ABBR_MESSAGE:Ljava/lang/String; = "ME"

.field public static final TAB_ABBR_UPDATES_AND_EVENTS:Ljava/lang/String; = "UE"

.field private static final TAG:Ljava/lang/String; = "ContactDetailLayerCarouselActivity"

.field public static final TAG_ALBUM:Ljava/lang/String; = "PEOPLE_DETAIL_DETAIL_ALBUM"

.field public static final TAG_CALL_HISTORY:Ljava/lang/String; = "PEOPLE_DETAIL_CALL_HISTORY"

.field public static final TAG_COMMUNICATION:Ljava/lang/String; = "PEOPLE_DETAIL_TAG_COMMUNICATION"

.field public static final TAG_MAIL:Ljava/lang/String; = "PEOPLE_DETAIL_MAIL"

.field public static final TAG_MESSAGE:Ljava/lang/String; = "PEOPLE_DETAIL_MESSAGE"

.field public static final TAG_UPDATES_N_EVENTS:Ljava/lang/String; = "PEOPLE_DETAIL_UPDATES_N_EVENTS"

.field public static final TAG_VIEW_DETAIL:Ljava/lang/String; = "PEOPLE_DETAIL_VIEW_DETAIL"

.field public static final THREAD_COUNT_UPDATE:Ljava/lang/String; = "ThreadCountUpdate"

.field private static currentActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreviousActivityRefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected MAIL_UNREAD_COUNT:I

.field protected MESSAGE_UNREAD_COUNT:I

.field private indicatorListener:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;

.field private logTime:J

.field private logTimeDiff:J

.field private logTimeNow:J

.field private mAppContext:Landroid/content/Context;

.field private mBundle:Landroid/os/Bundle;

.field private mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

.field private mClosePreviousActivityHandler:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$ClosePreviousActivityHandler;

.field private mContactType:I

.field private mCurrentTabTag:Ljava/lang/String;

.field private mCustomizedBundle:Landroid/os/Bundle;

.field mDestroyed:Z

.field protected mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

.field protected mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

.field mIndicatorReqList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/indicator/PersonIndicatorRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

.field public mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

.field private mIntentListener:Landroid/content/BroadcastReceiver;

.field private mIsMessageTabSelected:Z

.field private mIsSim:Z

.field private mIsUriReady:Z

.field private mLatestStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadComplete:Z

.field private mNotExist:Z

.field private mTabOrder:Ljava/lang/String;

.field private mUnknownContactNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x2080223

    const v4, 0x2080222

    const v3, 0x20803e1

    const v2, 0x20803e0

    const v1, 0x20803b5

    .line 82
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DEBUG:Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mPreviousActivityRefList:Ljava/util/ArrayList;

    .line 255
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const v0, 0x2080238

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_ON:I

    .line 258
    const v0, 0x2080239

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_REST:I

    .line 259
    const v0, 0x2080381

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_OVERLAY:I

    .line 261
    const v0, 0x2080340

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MESSAGE_ON:I

    .line 262
    const v0, 0x2080341

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MESSAGE_REST:I

    .line 263
    const v0, 0x20803a8

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MESSAGE_OVERLAY:I

    .line 265
    const v0, 0x2080312

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MAIL_ON:I

    .line 266
    const v0, 0x2080313

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MAIL_REST:I

    .line 267
    const v0, 0x20803a3

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MAIL_OVERLAY:I

    .line 269
    const v0, 0x208044d

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_ON:I

    .line 270
    const v0, 0x208044e

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_REST:I

    .line 271
    const v0, 0x20803ce

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_OVERLAY:I

    .line 273
    sput v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_ALBUM_ON:I

    .line 274
    sput v3, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_ALBUM_REST:I

    .line 275
    sput v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_ALBUM_OVERLAY:I

    .line 277
    sput v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_PLUGIN_ALBUM_ON:I

    .line 278
    sput v3, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_PLUGIN_ALBUM_REST:I

    .line 279
    sput v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_PLUGIN_ALBUM_OVERLAY:I

    .line 281
    sput v4, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_ON:I

    .line 282
    sput v5, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_REST:I

    .line 283
    const v0, 0x208037f

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_OVERLAY:I

    .line 286
    const v0, 0x2080835

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_COMMUNICATION_ON:I

    .line 287
    const v0, 0x2080836

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_COMMUNICATION_REST:I

    .line 288
    const v0, 0x2080ab7

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_COMMUNICATION_OVERLAY:I

    .line 325
    :goto_0
    return-void

    .line 292
    :cond_0
    const v0, 0x2080238

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_ON:I

    .line 293
    const v0, 0x2080239

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_REST:I

    .line 294
    const v0, 0x2080381

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_OVERLAY:I

    .line 296
    const v0, 0x2080340

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MESSAGE_ON:I

    .line 297
    const v0, 0x2080341

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MESSAGE_REST:I

    .line 298
    const v0, 0x20803a8

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MESSAGE_OVERLAY:I

    .line 300
    const v0, 0x2080312

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MAIL_ON:I

    .line 301
    const v0, 0x2080313

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MAIL_REST:I

    .line 302
    const v0, 0x20803a3

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MAIL_OVERLAY:I

    .line 304
    const v0, 0x208044d

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_ON:I

    .line 305
    const v0, 0x208044e

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_REST:I

    .line 306
    const v0, 0x20803ce

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_OVERLAY:I

    .line 308
    sput v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_ALBUM_ON:I

    .line 309
    sput v3, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_ALBUM_REST:I

    .line 310
    sput v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_ALBUM_OVERLAY:I

    .line 312
    sput v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_PLUGIN_ALBUM_ON:I

    .line 313
    sput v3, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_PLUGIN_ALBUM_REST:I

    .line 314
    sput v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_PLUGIN_ALBUM_OVERLAY:I

    .line 316
    sput v4, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_ON:I

    .line 317
    sput v5, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_REST:I

    .line 318
    const v0, 0x208037f

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_OVERLAY:I

    .line 321
    const v0, 0x2080835

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_COMMUNICATION_ON:I

    .line 322
    const v0, 0x2080836

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_COMMUNICATION_REST:I

    .line 323
    const v0, 0x2080ab7

    sput v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_COMMUNICATION_OVERLAY:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;-><init>()V

    .line 106
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIsUriReady:Z

    .line 107
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mNotExist:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIsSim:Z

    .line 110
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mUnknownContactNumber:Ljava/lang/String;

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->logTime:J

    .line 125
    iput-wide v4, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->logTimeDiff:J

    .line 126
    iput-wide v4, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->logTimeNow:J

    .line 128
    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mBundle:Landroid/os/Bundle;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    .line 134
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mDestroyed:Z

    .line 136
    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mClosePreviousActivityHandler:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$ClosePreviousActivityHandler;

    .line 150
    iput v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MESSAGE_UNREAD_COUNT:I

    .line 151
    iput v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MAIL_UNREAD_COUNT:I

    .line 154
    new-instance v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$1;-><init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIntentListener:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$2;-><init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    .line 327
    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCustomizedBundle:Landroid/os/Bundle;

    .line 328
    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mTabOrder:Ljava/lang/String;

    .line 330
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIsMessageTabSelected:Z

    .line 339
    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    .line 1315
    return-void
.end method

.method static synthetic access$002(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIsMessageTabSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mPreviousActivityRefList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mLoadComplete:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Lcom/htc/widget/CarouselHost;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->updateCount(Lcom/htc/widget/CarouselHost;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->handleContactNotFound()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mLatestStatus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mLatestStatus:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mDetailLayerObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mDetailLayerObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mDetailLayerObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addCallHistoryTab(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 893
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 894
    .local v0, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v1, "PEOPLE_DETAIL_CALL_HISTORY"

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 895
    const v1, 0x7f0a00f4

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 896
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_REST:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 897
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_ON:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 898
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_OVERLAY:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 899
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 900
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 901
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    return-void
.end method

.method private addCommunicationTab(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 935
    .local v0, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v1, "PEOPLE_DETAIL_TAG_COMMUNICATION"

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 936
    const v1, 0x7f0a00f5

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 937
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_COMMUNICATION_REST:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 938
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_COMMUNICATION_ON:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 939
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_COMMUNICATION_OVERLAY:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 940
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 941
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    return-void
.end method

.method private addContactCardTab(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 830
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mNotExist:Z

    if-eqz v1, :cond_0

    .line 855
    :goto_0
    return-void

    .line 831
    :cond_0
    new-instance v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 832
    .local v0, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v1, "PEOPLE_DETAIL_VIEW_DETAIL"

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 833
    iget-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCurrentTabTag:Ljava/lang/String;

    .line 834
    const v1, 0x7f0a00ef

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 835
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_REST:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 836
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_ON:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 837
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_OVERLAY:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 839
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    if-ne v1, v2, :cond_2

    .line 841
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 847
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 849
    if-eqz p1, :cond_3

    .line 850
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 845
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    goto :goto_1

    .line 853
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->addSpecTab(Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;)V

    goto :goto_0
.end method

.method private addMailTab(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 883
    .local v0, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v1, "PEOPLE_DETAIL_MAIL"

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 884
    const v1, 0x7f0a00f1

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 885
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MAIL_REST:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 886
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MAIL_ON:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 887
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MAIL_OVERLAY:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 888
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 889
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    return-void
.end method

.method private addMessageTab(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    const v3, 0x7f0a00f0

    .line 858
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$OpenSense;->isOpenSenseEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    new-instance v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v1}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 860
    .local v1, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v2, "PEOPLE_DETAIL_MESSAGE"

    invoke-direct {p0, v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 861
    iput v3, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 862
    sget v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MESSAGE_REST:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 863
    sget v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MESSAGE_ON:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 864
    sget v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MESSAGE_OVERLAY:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 865
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.MessageTab"

    const-string v3, "com.android.MessageTab.ContactDetailMessageActivity2"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 868
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 870
    .end local v1           #tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    :cond_0
    new-instance v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v1}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 871
    .restart local v1       #tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v2, "PEOPLE_DETAIL_MESSAGE"

    invoke-direct {p0, v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 872
    iput v3, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 873
    sget v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MESSAGE_REST:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 874
    sget v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MESSAGE_ON:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 875
    sget v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_MESSAGE_OVERLAY:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 876
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/htccontacts/ContactDetailMessageActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 877
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addPluginAlbumTab(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 922
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 923
    .local v0, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v1, "PEOPLE_DETAIL_DETAIL_ALBUM"

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 924
    const v1, 0x7f0a00f3

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 925
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_PLUGIN_ALBUM_REST:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 926
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_PLUGIN_ALBUM_ON:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 927
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_PLUGIN_ALBUM_OVERLAY:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 928
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 929
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    return-void
.end method

.method private addUpdatesAndEventsTab(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    const v2, 0x7f0a01f9

    .line 905
    new-instance v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 906
    .local v0, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v1, "PEOPLE_DETAIL_UPDATES_N_EVENTS"

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 907
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    iput v2, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 914
    :goto_0
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_REST:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 915
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_ON:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 916
    sget v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_OVERLAY:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 917
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 918
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    return-void

    .line 911
    :cond_0
    iput v2, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    goto :goto_0
.end method

.method private static final fixLegacyUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 6
    .parameter "oldUri"
    .parameter "resolver"

    .prologue
    .line 1303
    move-object v0, p0

    .line 1304
    .local v0, fixedUri:Landroid/net/Uri;
    const-string v4, "contacts"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1305
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1306
    .local v1, mimeType:Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/person"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1307
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1308
    .local v2, peopleId:J
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1312
    .end local v1           #mimeType:Ljava/lang/String;
    .end local v2           #peopleId:J
    :cond_0
    return-object v0
.end method

.method private handleContactNotFound()V
    .locals 3

    .prologue
    .line 1353
    const v1, 0x7f0a02e5

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1354
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1355
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->finish()V

    .line 1356
    return-void
.end method

.method private processTab(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "tab"

    .prologue
    .line 1345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1346
    const-string p1, "PEOPLE_DETAIL_VIEW_DETAIL"

    .line 1348
    :cond_0
    const-string v1, "%d_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1349
    .local v0, newTab:Ljava/lang/String;
    return-object v0
.end method

.method private updateCount(Lcom/htc/widget/CarouselHost;Ljava/lang/String;I)V
    .locals 1
    .parameter "tabHost"
    .parameter "tag"
    .parameter "count"

    .prologue
    .line 1255
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->updateCount(Lcom/htc/widget/CarouselHost;Ljava/lang/String;IZ)V

    .line 1256
    return-void
.end method

.method private updateCount(Lcom/htc/widget/CarouselHost;Ljava/lang/String;IZ)V
    .locals 4
    .parameter "tabHost"
    .parameter "tag"
    .parameter "count"
    .parameter "broadcastNotify"

    .prologue
    const/4 v3, 0x1

    .line 1259
    if-lez p3, :cond_2

    .line 1260
    const/16 v1, 0x63

    if-le p3, v1, :cond_1

    .line 1261
    const-string v1, "99+"

    invoke-virtual {p1, p2, v1}, Lcom/htc/widget/CarouselHost;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1265
    :goto_0
    invoke-virtual {p1, p2, v3}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    .line 1270
    :goto_1
    if-ne v3, p4, :cond_0

    .line 1271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1272
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ThreadCountUpdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1275
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void

    .line 1263
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/htc/widget/CarouselHost;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1268
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method protected addIndicatorRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->addRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    .line 1252
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 650
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->finish()V

    .line 651
    return-void
.end method

.method public getCachedInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    return-object v0
.end method

.method public getContactType()I
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    return v0
.end method

.method public getDetailInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    return-object v0
.end method

.method public getItemAccountArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1146
    .local p1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, sourceIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-virtual {v6}, Lcom/android/htccontacts/HtcContactInfoBase;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    .line 1147
    .local v2, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz v2, :cond_0

    .line 1148
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    .line 1149
    .local v3, entity:Landroid/content/Entity;
    invoke-virtual {v3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 1150
    .local v1, entValues:Landroid/content/ContentValues;
    const-string v6, "account_type"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1151
    .local v0, accountType:Ljava/lang/String;
    const-string v6, "sourceid"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1152
    .local v5, sourceId:Ljava/lang/String;
    const-string v6, "OpenSense"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add account/id pair ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1157
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #entValues:Landroid/content/ContentValues;
    .end local v3           #entity:Landroid/content/Entity;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #sourceId:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getItemAccountMap()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1122
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v8

    if-ne v7, v8, :cond_1

    .line 1123
    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-virtual {v7}, Lcom/android/htccontacts/HtcContactInfoBase;->getEntities()Ljava/util/ArrayList;

    move-result-object v3

    .line 1124
    .local v3, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1125
    .local v0, accountList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v3, :cond_2

    .line 1126
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity;

    .line 1127
    .local v4, entity:Landroid/content/Entity;
    invoke-virtual {v4}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 1128
    .local v2, entValues:Landroid/content/ContentValues;
    const-string v7, "account_type"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1130
    .local v1, accountType:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1131
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1137
    .local v6, namelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const-string v7, "sourceid"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1134
    .end local v6           #namelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    .restart local v6       #namelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1142
    .end local v0           #accountList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #entValues:Landroid/content/ContentValues;
    .end local v3           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v4           #entity:Landroid/content/Entity;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #namelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public final getLatestStatus()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mLatestStatus:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getLocalTabSpec()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1022
    iget-boolean v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mNotExist:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 1085
    :cond_0
    :goto_0
    return-object v1

    .line 1023
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1024
    .local v1, tabSpecList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    iget v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    if-ne v3, v4, :cond_4

    .line 1028
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->addContactCardTab(Ljava/util/List;)V

    .line 1029
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mTabOrder:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ME_MA_UE_GA_CH"

    :goto_1
    const-string v4, "_"

    invoke-direct {v0, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    .local v0, st:Ljava/util/StringTokenizer;
    :goto_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1031
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_2

    .line 1029
    .end local v0           #st:Ljava/util/StringTokenizer;
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mTabOrder:Ljava/lang/String;

    goto :goto_1

    .line 1033
    .restart local v0       #st:Ljava/util/StringTokenizer;
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->addCommunicationTab(Ljava/util/List;)V

    goto :goto_0

    .line 1035
    .end local v0           #st:Ljava/util/StringTokenizer;
    :cond_4
    iget v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    .line 1039
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->addContactCardTab(Ljava/util/List;)V

    .line 1041
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mTabOrder:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "ME_MA_UE_GA_CH"

    :goto_3
    const-string v4, "_"

    invoke-direct {v0, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    .restart local v0       #st:Ljava/util/StringTokenizer;
    :goto_4
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1043
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_4

    .line 1041
    .end local v0           #st:Ljava/util/StringTokenizer;
    :cond_5
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mTabOrder:Ljava/lang/String;

    goto :goto_3

    .line 1045
    .restart local v0       #st:Ljava/util/StringTokenizer;
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->addCommunicationTab(Ljava/util/List;)V

    goto :goto_0

    .line 1050
    .end local v0           #st:Ljava/util/StringTokenizer;
    :cond_7
    const/4 v3, 0x4

    iget v5, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    if-ne v3, v5, :cond_8

    .line 1051
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->addCommunicationTab(Ljava/util/List;)V

    goto :goto_0

    .line 1056
    :cond_8
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$OpenSense;->isOpenSenseEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1060
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->addContactCardTab(Ljava/util/List;)V

    .line 1061
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->addCommunicationTab(Ljava/util/List;)V

    .line 1062
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mTabOrder:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "ME_MA_UE_GA_CH"

    :goto_5
    const-string v5, "_"

    invoke-direct {v0, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    .restart local v0       #st:Ljava/util/StringTokenizer;
    :cond_9
    :goto_6
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1064
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1065
    .local v2, token:Ljava/lang/String;
    const-string v3, "UE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1066
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->addUpdatesAndEventsTab(Ljava/util/List;)V

    goto :goto_6

    .line 1062
    .end local v0           #st:Ljava/util/StringTokenizer;
    .end local v2           #token:Ljava/lang/String;
    :cond_a
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mTabOrder:Ljava/lang/String;

    goto :goto_5

    .line 1068
    .restart local v0       #st:Ljava/util/StringTokenizer;
    .restart local v2       #token:Ljava/lang/String;
    :cond_b
    const-string v3, "GA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1070
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isFaceBookPhoneProject()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v4

    :goto_7
    if-nez v3, :cond_9

    .line 1071
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->addPluginAlbumTab(Ljava/util/List;)V

    goto :goto_6

    .line 1070
    :cond_c
    const/4 v3, 0x0

    goto :goto_7

    .line 1081
    .end local v0           #st:Ljava/util/StringTokenizer;
    .end local v2           #token:Ljava/lang/String;
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->addContactCardTab(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method protected getPluginFeature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    const-string v0, "AddDetailLayerTab"

    return-object v0
.end method

.method public getResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getTagPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueCarouselId()I
    .locals 4

    .prologue
    .line 990
    const/16 v0, 0x80

    .line 991
    .local v0, id:I
    iget v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 995
    add-int/lit8 v0, v0, 0x1

    .line 1011
    :goto_0
    const-string v1, "ContactDetailLayerCarouselActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Carousel ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    return v0

    .line 997
    :cond_0
    iget v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1001
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1006
    :cond_1
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    if-ne v1, v2, :cond_2

    .line 1007
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 1009
    :cond_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public isAccountTypeJoined(Ljava/lang/String;)I
    .locals 8
    .parameter "accountType"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1093
    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    if-eqz v7, :cond_0

    .line 1094
    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-virtual {v7}, Lcom/android/htccontacts/HtcContactInfoBase;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    .line 1095
    .local v2, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v2, :cond_1

    .line 1111
    .end local v2           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_0
    :goto_0
    return v5

    .line 1099
    .restart local v2       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_2

    move v5, v6

    .line 1100
    goto :goto_0

    .line 1102
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    .line 1103
    .local v3, entity:Landroid/content/Entity;
    invoke-virtual {v3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 1104
    .local v1, entValues:Landroid/content/ContentValues;
    const-string v5, "account_type"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, contactType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1106
    const/4 v5, 0x1

    goto :goto_0

    .end local v0           #contactType:Ljava/lang/String;
    .end local v1           #entValues:Landroid/content/ContentValues;
    .end local v3           #entity:Landroid/content/Entity;
    :cond_4
    move v5, v6

    .line 1109
    goto :goto_0
.end method

.method public isDetailInfoLoaded()Z
    .locals 1

    .prologue
    .line 1185
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mLoadComplete:Z

    return v0
.end method

.method protected isIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 1230
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIsUriReady:Z

    if-eqz v0, :cond_0

    .line 1231
    const/4 v0, 0x1

    .line 1233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLoadPluginInOnCreate()Z
    .locals 1

    .prologue
    .line 1017
    const/4 v0, 0x1

    return v0
.end method

.method public isSim()Z
    .locals 1

    .prologue
    .line 1385
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIsSim:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 353
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->requestWindowFeature(I)Z

    .line 354
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getApplication()Landroid/app/Application;

    move-result-object v11

    iput-object v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mAppContext:Landroid/content/Context;

    .line 355
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 356
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 358
    .local v1, contactUri:Landroid/net/Uri;
    sget-boolean v11, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "ContactDetailLayerCarouselActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreate contactUri: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->fixLegacyUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v1

    .line 360
    sget-boolean v11, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "ContactDetailLayerCarouselActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreate fixed contactUri: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_1
    new-instance v11, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;-><init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$1;)V

    iput-object v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->indicatorListener:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;

    .line 365
    iget-object v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCustomizedBundle:Landroid/os/Bundle;

    if-nez v11, :cond_7

    .line 366
    const-string v11, "ME_MA_UE_GA_CH"

    iput-object v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mTabOrder:Ljava/lang/String;

    .line 373
    :goto_0
    const/4 v5, 0x0

    .line 375
    .local v5, isUnknown:Z
    if-eqz v1, :cond_3

    .line 376
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 377
    .local v9, mimeType:Ljava/lang/String;
    const-string v11, "vnd.android.cursor.item/contacts_sim"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 378
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIsSim:Z

    .line 383
    :cond_2
    :goto_1
    const-string v11, "account_type"

    invoke-virtual {v1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, isSimQuery:Ljava/lang/String;
    const-string v11, "com.anddroid.contacts.sim"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 385
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIsSim:Z

    .line 388
    .end local v4           #isSimQuery:Ljava/lang/String;
    .end local v9           #mimeType:Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_e

    .line 389
    const-string v11, "unknown_mail_type"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 390
    const/4 v11, 0x5

    iput v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    .line 391
    new-instance v11, Lcom/android/htccontacts/HtcContactInfoUnknown;

    const-string v12, "mail"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v11, v12, v13, v14}, Lcom/android/htccontacts/HtcContactInfoUnknown;-><init>(Ljava/lang/String;ZLandroid/content/Context;)V

    iput-object v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    .line 415
    :goto_2
    iget-object v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    const v12, 0x7f0a016e

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/htccontacts/HtcContactInfoBase;->mContactTypeLabel:Ljava/lang/String;

    .line 417
    new-instance v6, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;-><init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)V

    .line 418
    .local v6, loadContactInfo:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 420
    .local v7, loadContactInfoThread:Ljava/lang/Thread;
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isPeoplePerformanceTuningEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 421
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/Thread;->setPriority(I)V

    .line 423
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 425
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mLoadComplete:Z

    .line 427
    iget-object v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x44f

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 446
    .end local v6           #loadContactInfo:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;
    .end local v7           #loadContactInfoThread:Ljava/lang/Thread;
    :goto_3
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 447
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v11, "com.android.mms.ACTION_MESSAGE_TAB_ENTER"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v11, "com.android.mms.ACTION_MESSAGE_TAB_LEAVE"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    iget-object v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIntentListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v3}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 452
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->getInstance()Lcom/android/htccontacts/PeopleApp;

    move-result-object v11

    invoke-virtual {v11, p0}, Lcom/android/htccontacts/PeopleApp;->registerUiModeObserver(Landroid/app/Activity;)I

    .line 454
    invoke-super/range {p0 .. p1}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 456
    const v11, 0x7f070019

    invoke-virtual {p0, v11}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 457
    .local v8, loadingLayout:Landroid/view/View;
    if-eqz v8, :cond_6

    .line 458
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 459
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 461
    :cond_5
    if-eqz v5, :cond_6

    .line 462
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :cond_6
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->preloadTitleData(Landroid/content/Intent;)V

    .line 468
    new-instance v11, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-direct {v11}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;-><init>()V

    iput-object v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    .line 481
    return-void

    .line 369
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    .end local v5           #isUnknown:Z
    .end local v8           #loadingLayout:Landroid/view/View;
    :cond_7
    iget-object v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCustomizedBundle:Landroid/os/Bundle;

    const-string v12, "DETAIL_LAYER_TAB_ORDER"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mTabOrder:Ljava/lang/String;

    goto/16 :goto_0

    .line 379
    .restart local v5       #isUnknown:Z
    .restart local v9       #mimeType:Ljava/lang/String;
    :cond_8
    const-string v11, "vnd.android.cursor.item/unknown"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 380
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 394
    .end local v9           #mimeType:Ljava/lang/String;
    :cond_9
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    .line 396
    const-string v11, "number"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 397
    .local v10, number:Ljava/lang/String;
    iput-object v10, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mUnknownContactNumber:Ljava/lang/String;

    .line 399
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 400
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 403
    :cond_a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "-1"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "-3"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "-2"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 407
    :cond_b
    const-string v11, "ContactDetailLayerCarouselActivity"

    const-string v12, "Number for unknown contact card  is not available!!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    if-nez v10, :cond_c

    .line 409
    const-string v10, ""

    .line 411
    :cond_c
    const/4 v11, 0x4

    iput v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    .line 413
    :cond_d
    new-instance v11, Lcom/android/htccontacts/HtcContactInfoUnknown;

    iget-object v12, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v11, v10, v12}, Lcom/android/htccontacts/HtcContactInfoUnknown;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    goto/16 :goto_2

    .line 430
    .end local v10           #number:Ljava/lang/String;
    :cond_e
    iget-boolean v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIsSim:Z

    if-eqz v11, :cond_f

    .line 431
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    .line 438
    :goto_4
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isPeoplePerformanceTuningEnabled()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 439
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->onLookupCompleted(Landroid/net/Uri;)V

    goto/16 :goto_3

    .line 434
    :cond_f
    const/4 v11, 0x3

    iput v11, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    goto :goto_4

    .line 442
    :cond_10
    new-instance v11, Lcom/android/htccontacts/util/ContactUriLookupTask;

    invoke-direct {v11, p0}, Lcom/android/htccontacts/util/ContactUriLookupTask;-><init>(Lcom/android/htccontacts/util/ContactUriLookupListener;)V

    const/4 v12, 0x1

    new-array v12, v12, [Landroid/net/Uri;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {v11, v12}, Lcom/android/htccontacts/util/ContactUriLookupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 703
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->onDestroy()V

    .line 705
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->getInstance()Lcom/android/htccontacts/PeopleApp;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/htccontacts/PeopleApp;->unregisterUiModeObserver(Landroid/app/Activity;)I

    .line 707
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mDestroyed:Z

    .line 709
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isIndicatorEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    if-eqz v3, :cond_0

    .line 710
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->destroyProcess()V

    .line 713
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v3, :cond_1

    .line 715
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->destroyProcess()V

    .line 718
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 720
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .line 721
    .local v2, indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    invoke-virtual {v2}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->close()V

    .line 718
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    .end local v2           #indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    if-eqz v3, :cond_3

    .line 726
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/HtcContactInfoBase;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 727
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$3;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$3;-><init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 738
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIntentListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 750
    :goto_2
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ContactDetailLayerCarouselActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 748
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public onLookupCompleted(Landroid/net/Uri;)V
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x3e8

    const/4 v10, 0x1

    .line 580
    if-nez p1, :cond_0

    .line 581
    iput-boolean v10, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mNotExist:Z

    .line 582
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->handleContactNotFound()V

    .line 639
    :goto_0
    return-void

    .line 585
    :cond_0
    iput-boolean v10, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIsUriReady:Z

    .line 586
    iget-boolean v8, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIsSim:Z

    if-eqz v8, :cond_3

    .line 587
    new-instance v8, Lcom/android/htccontacts/HtcContactInfo;

    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v8, p1, v9}, Lcom/android/htccontacts/HtcContactInfo;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    .line 588
    iput v10, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    .line 589
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    check-cast v8, Lcom/android/htccontacts/HtcContactInfo;

    iget-boolean v8, v8, Lcom/android/htccontacts/HtcContactInfo;->personNotFound:Z

    if-eqz v8, :cond_1

    .line 590
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->handleContactNotFound()V

    goto :goto_0

    .line 593
    :cond_1
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v11, v12}, Lcom/android/htccontacts/HtcContactInfoBase;->registerForChangedNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 625
    :goto_1
    new-instance v6, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;-><init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)V

    .line 626
    .local v6, loadContactInfo:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 629
    .local v7, loadContactInfoThread:Ljava/lang/Thread;
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isPeoplePerformanceTuningEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 630
    invoke-virtual {v7, v10}, Ljava/lang/Thread;->setPriority(I)V

    .line 633
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 636
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->updateIndicator()V

    .line 638
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x44f

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 596
    .end local v6           #loadContactInfo:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;
    .end local v7           #loadContactInfoThread:Ljava/lang/Thread;
    :cond_3
    const-wide/16 v2, 0x0

    .line 598
    .local v2, lContactId:J
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 605
    const-wide/16 v8, 0x0

    cmp-long v8, v8, v2

    if-gez v8, :cond_5

    .line 606
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v0

    .line 607
    .local v0, bundleId:Landroid/os/Bundle;
    if-eqz v0, :cond_5

    const-string v8, "contact_id"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 608
    const-string v8, "contact_id"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 609
    .local v4, lMyContactId:J
    cmp-long v8, v2, v4

    if-nez v8, :cond_5

    .line 610
    sget-boolean v8, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "ContactDetailLayerCarouselActivity"

    const-string v9, "onCreate MyContact!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_4
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getMyContactCardIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->startActivity(Landroid/content/Intent;)V

    .line 612
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->finish()V

    .line 617
    .end local v0           #bundleId:Landroid/os/Bundle;
    .end local v4           #lMyContactId:J
    :cond_5
    new-instance v8, Lcom/android/htccontacts/HtcContactInfo;

    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v8, p1, v9}, Lcom/android/htccontacts/HtcContactInfo;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    .line 618
    const/4 v8, 0x3

    iput v8, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    .line 619
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    check-cast v8, Lcom/android/htccontacts/HtcContactInfo;

    iget-boolean v8, v8, Lcom/android/htccontacts/HtcContactInfo;->personNotFound:Z

    if-eqz v8, :cond_6

    .line 620
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->handleContactNotFound()V

    goto/16 :goto_0

    .line 600
    :catch_0
    move-exception v1

    .line 602
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v8, Lcom/android/htccontacts/util/ContactUriLookupTask;

    invoke-direct {v8, p0}, Lcom/android/htccontacts/util/ContactUriLookupTask;-><init>(Lcom/android/htccontacts/util/ContactUriLookupListener;)V

    new-array v9, v10, [Landroid/net/Uri;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v8, v9}, Lcom/android/htccontacts/util/ContactUriLookupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 623
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_6
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v11, v12}, Lcom/android/htccontacts/HtcContactInfoBase;->registerForChangedNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 686
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->onPause()V

    .line 687
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->pauseIndicator()V

    .line 688
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 679
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->onResume()V

    .line 680
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->startIndicator()V

    .line 681
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->updateIndicator()V

    .line 682
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 692
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->onStop()V

    .line 693
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    .line 695
    .local v0, tabHost:Lcom/htc/widget/CarouselHost;
    const-string v1, "PEOPLE_DETAIL_TAG_COMMUNICATION"

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->updateCount(Lcom/htc/widget/CarouselHost;Ljava/lang/String;IZ)V

    .line 696
    const-string v1, "PEOPLE_DETAIL_UPDATES_N_EVENTS"

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->updateCount(Lcom/htc/widget/CarouselHost;Ljava/lang/String;IZ)V

    .line 697
    return-void
.end method

.method public onTabEndSliding(Ljava/lang/String;)V
    .locals 7
    .parameter "endTag"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1361
    sget-boolean v3, Lcom/android/htccontacts/util/ContactsUtils;->sIsProfilingEnabled:Z

    if-nez v3, :cond_1

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1365
    new-array v1, v6, [Ljava/lang/String;

    .line 1366
    .local v1, keys:[Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/String;

    .line 1367
    .local v0, data:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCurrentTabTag:Ljava/lang/String;

    aput-object v3, v1, v4

    .line 1368
    const-string v3, "on_pause"

    aput-object v3, v0, v4

    .line 1369
    aput-object p1, v1, v5

    .line 1370
    const-string v3, "on_resume"

    aput-object v3, v0, v5

    .line 1371
    invoke-static {v1, v0}, Lcom/android/htccontacts/util/ContactsUtils;->userProfiling_Detail_Tab_Switch([Ljava/lang/String;[Ljava/lang/String;)V

    .line 1372
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCurrentTabTag:Ljava/lang/String;

    .line 1374
    const-string v3, "PEOPLE_DETAIL_DETAIL_ALBUM"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1375
    const v3, 0x7f070019

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1376
    .local v2, loadingLayout:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1377
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected pauseIndicator()V
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->pauseProcess()V

    .line 1240
    :cond_0
    return-void
.end method

.method public preloadTitleData(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v5, -0x1

    .line 520
    new-instance v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    invoke-direct {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    .line 522
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    const-string v1, "info_category"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->category:Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->category:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->category:Ljava/lang/String;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    const-string v1, "info_display_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->displayName:Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->displayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->displayName:Ljava/lang/String;

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    const-string v1, "info_thumbnail_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->thumbnailId:J

    .line 534
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    iget-wide v0, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->thumbnailId:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 538
    .local v6, RawPhoto:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    const-string v1, "info_account_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->accountType:Ljava/lang/String;

    .line 539
    const/4 v7, 0x0

    .line 541
    .local v7, isSim:Z
    const-string v0, "com.anddroid.contacts.sim"

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    const/4 v7, 0x1

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    const-string v1, "info_lookup_key"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->lookupKey:Ljava/lang/String;

    .line 547
    const/4 v10, 0x0

    .line 548
    .local v10, isLinked:Z
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->lookupKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 549
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->lookupKey:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v5, v0, :cond_3

    .line 550
    const/4 v10, 0x1

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->accountType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->lookupKey:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/HtcContactInfo;->getContactTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, contactTypeLabel:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    const-string v1, "info_presence"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->presence:I

    .line 559
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    const-string v1, "info_chat_capability"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->chatCapability:I

    .line 561
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isPeoplePerformanceTuningEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 577
    :cond_4
    :goto_0
    return-void

    .line 564
    :cond_5
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isPeoplePerformanceTuningEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 565
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    iget-object v1, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->displayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    iget v2, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->presence:I

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    iget v3, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->chatCapability:I

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mCachedData:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;

    iget-object v5, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$CachedData;->category:Ljava/lang/String;

    const v0, 0x7f0a00ff

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v8, 0x1

    :goto_1
    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZZ)V

    goto :goto_0

    :cond_6
    move v8, v9

    goto :goto_1
.end method

.method protected processIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    .line 797
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 798
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 799
    .local v4, idString:Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 800
    .local v2, id:J
    const/4 v5, 0x0

    .line 802
    .local v5, isLookupUri:Z
    iget v7, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    if-eq v9, v7, :cond_0

    .line 804
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 809
    :goto_0
    if-eqz v5, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 811
    .local v1, fixUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 812
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 816
    .end local v1           #fixUri:Landroid/net/Uri;
    :cond_0
    const-string v7, "CONTACT_ID"

    invoke-virtual {p1, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 817
    const-string v7, "CONTACT_URI"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 818
    const-string v7, "CONTACT_URI_STRING"

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    const-string v7, "CONTACT_NUMBER"

    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mUnknownContactNumber:Ljava/lang/String;

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    iget v7, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    if-ne v9, v7, :cond_1

    .line 821
    const-string v7, "PHONE_NUMBER_ONLY"

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 826
    :goto_1
    return-object p1

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x1

    goto :goto_0

    .line 824
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v7, "PHONE_NUMBER_ONLY"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected processPluginIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 951
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 952
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 953
    .local v4, idString:Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 954
    .local v2, id:J
    const/4 v5, 0x0

    .line 956
    .local v5, isLookupUri:Z
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 961
    :goto_0
    if-eqz v5, :cond_0

    .line 962
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 963
    .local v1, fixUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 964
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 967
    .end local v1           #fixUri:Landroid/net/Uri;
    :cond_0
    const-string v7, "CONTACT_ID"

    invoke-virtual {p1, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 969
    const-string v7, "CONTACT_URI"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 970
    const-string v7, "CONTACT_URI_STRING"

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    const-string v7, "CONTACT_NUMBER"

    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mUnknownContactNumber:Ljava/lang/String;

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    const/4 v7, 0x2

    iget v8, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mContactType:I

    if-ne v7, v8, :cond_2

    .line 973
    const-string v7, "PHONE_NUMBER_ONLY"

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 978
    :goto_1
    sget-boolean v7, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "ContactDetailLayerCarouselActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processPluginIntent("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") - PHONE_NUMBER_ONLY: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "PHONE_NUMBER_ONLY"

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CONTACT_NUMBER: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "CONTACT_NUMBER"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_1
    return-object p1

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x1

    goto :goto_0

    .line 976
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v7, "PHONE_NUMBER_ONLY"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected resetCaroselBackgroud()V
    .locals 9

    .prologue
    .line 491
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 492
    .local v4, innerLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/CarouselHost;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v1

    .line 494
    .local v1, carouselWidget:Lcom/htc/widget/CarouselWidget;
    invoke-virtual {v1}, Lcom/htc/widget/CarouselWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 495
    .local v5, layoutView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20500b8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 497
    .local v3, height:I
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 498
    .local v6, params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x50

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 499
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20806b7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, d:Landroid/graphics/drawable/Drawable;
    move-object v0, v2

    .line 502
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 503
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 504
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 506
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 509
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 510
    return-void
.end method

.method protected setContentView()V
    .locals 2

    .prologue
    .line 484
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->setContentView(I)V

    .line 485
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->enableSecondBackground(Z)V

    .line 487
    return-void
.end method

.method protected setCurrentTab(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 764
    const-string v6, "DefaultTab"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 765
    .local v2, intentTab:Ljava/lang/String;
    const-string v0, ""

    .line 766
    .local v0, defaultTab:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 767
    const-string v6, "DefaultTab"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "tab"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 773
    .local v5, param:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 774
    const-string v6, "UnE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 776
    const-string v6, "PEOPLE_DETAIL_UPDATES_N_EVENTS"

    invoke-direct {p0, v6}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.PEOPLE_NOTIFICATION_REMOVE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 778
    .local v1, i:Landroid/content/Intent;
    const-string v6, "TYPE"

    const-string v7, "UnE"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 782
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    const-string v6, "PEOPLE_DETAIL_CALL_HISTORY"

    invoke-direct {p0, v6}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 783
    const v6, 0x7f070019

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 784
    .local v3, loadingLayout:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 785
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 786
    sget-boolean v6, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "ContactDetailLayerCarouselActivity"

    const-string v7, "Hide contact card layout for call history"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_1
    const-string v6, "PEOPLE_DETAIL_TAG_COMMUNICATION"

    invoke-direct {p0, v6}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .end local v3           #loadingLayout:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v4

    .line 792
    .local v4, panelHost:Lcom/htc/widget/CarouselHost;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->setDefaultTab(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v4, v0}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 794
    return-void

    .line 770
    .end local v4           #panelHost:Lcom/htc/widget/CarouselHost;
    .end local v5           #param:Ljava/lang/String;
    :cond_3
    const-string v6, "PEOPLE_DETAIL_VIEW_DETAIL"

    invoke-direct {p0, v6}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->processTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setDefaultTitleVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 513
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 514
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setVisibility(I)V

    .line 517
    :cond_0
    return-void
.end method

.method protected startIndicator()V
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->startProcess()V

    .line 1246
    :cond_0
    return-void
.end method

.method public updateIndicator()V
    .locals 7

    .prologue
    .line 1161
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-wide v4, v2, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 1162
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1163
    .local v3, b:Landroid/os/Bundle;
    const-string v0, "contactId"

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-wide v1, v1, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1164
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    if-nez v0, :cond_3

    .line 1165
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->indicatorListener:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$IndicatorListener;

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-wide v4, v4, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;JZ)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .line 1166
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    instance-of v0, v0, Lcom/android/htccontacts/HtcContactInfo;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    check-cast v0, Lcom/android/htccontacts/HtcContactInfo;

    iget-wide v4, v0, Lcom/android/htccontacts/HtcContactInfo;->mStatusUpdateId:J

    invoke-virtual {v1, v4, v5}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->changeStatusId(J)V

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->setProcessor(Lcom/android/htccontacts/indicator/IndicatorProcessor;)V

    .line 1179
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->addIndicatorRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    .line 1182
    .end local v3           #b:Landroid/os/Bundle;
    :cond_2
    return-void

    .line 1174
    .restart local v3       #b:Landroid/os/Bundle;
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-wide v1, v1, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->changePersonId(Landroid/os/Bundle;J)V

    .line 1175
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    instance-of v0, v0, Lcom/android/htccontacts/HtcContactInfo;

    if-eqz v0, :cond_1

    .line 1176
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mIndicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    check-cast v0, Lcom/android/htccontacts/HtcContactInfo;

    iget-wide v4, v0, Lcom/android/htccontacts/HtcContactInfo;->mStatusUpdateId:J

    invoke-virtual {v1, v4, v5}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->changeStatusId(J)V

    goto :goto_0
.end method
