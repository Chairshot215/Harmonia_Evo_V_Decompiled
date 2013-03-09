.class public Lcom/android/htcdialer/EditSpeedDialEntryActivity;
.super Landroid/app/Activity;
.source "EditSpeedDialEntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;,
        Lcom/android/htcdialer/EditSpeedDialEntryActivity$NAME_INFO;,
        Lcom/android/htcdialer/EditSpeedDialEntryActivity$SimColumnIndex;,
        Lcom/android/htcdialer/EditSpeedDialEntryActivity$PhoneColumnIndex;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POSITION:I = -0x1

.field private static final MODE_CONTACT:I = 0x0

.field private static final MODE_SIM:I = 0x1

.field private static final PHONE_PROJECTION:[Ljava/lang/String; = null

.field private static final SIM_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EditSpeedDialActivity"

.field private static final TOKEN_DEVICE_PHONE_INFO:I = 0x3

.field private static final TOKEN_NAME_INFO:I = 0x2


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mDefaultNumberId:J

.field private mHandler:Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;

.field private mLocationButton:Landroid/widget/Button;

.field private mLocationDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mLocationStrings:[Ljava/lang/CharSequence;

.field private mLookupUri:Landroid/net/Uri;

.field private mMode:I

.field private mMyPhoneCursor:Landroid/database/Cursor;

.field private mMySpeedDials:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNeedResult:Z

.field private mNumberButton:Landroid/widget/Button;

.field private mNumberDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mNumbers:[Ljava/lang/CharSequence;

.field private mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordLocation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveButton:Landroid/widget/Button;

.field private mSelectLocationPosition:I

.field private mSelectNumberPosition:I

.field private mSeparator:Landroid/widget/TextView;

.field private mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

.field private mUri:Landroid/net/Uri;

.field private mUserId:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->PHONE_PROJECTION:[Ljava/lang/String;

    .line 113
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "recordNumber"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->SIM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 138
    iput v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I

    .line 139
    iput v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectLocationPosition:I

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRawContactIds:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRecordLocation:Ljava/util/ArrayList;

    .line 172
    sget v0, Landroid/provider/HtcContactsContract$SpeedDial;->MAX_NUMBER:I

    new-array v0, v0, [Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    iput-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMySpeedDials:Ljava/util/ArrayList;

    .line 178
    iput-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 179
    iput-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1131
    return-void
.end method

.method static synthetic access$000(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->save()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->saveFailHandling()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/htcdialer/EditSpeedDialEntryActivity;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumbers:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/htcdialer/EditSpeedDialEntryActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/htcdialer/EditSpeedDialEntryActivity;Landroid/database/Cursor;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getPhoneNumberStringByPosition(Landroid/database/Cursor;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/htcdialer/EditSpeedDialEntryActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mDefaultNumberId:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/htcdialer/EditSpeedDialEntryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->PHONE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mUserId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNeedResult:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->updateAndInit()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/htcdialer/EditSpeedDialEntryActivity;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationStrings:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/htcdialer/EditSpeedDialEntryActivity;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationStrings:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htcdialer/EditSpeedDialEntryActivity;[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getLocationStrings([Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectLocationPosition:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/htcdialer/EditSpeedDialEntryActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectLocationPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/htcdialer/EditSpeedDialEntryActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I

    return p1
.end method

.method private findNumberPosition()Ljava/lang/CharSequence;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 493
    const/4 v4, 0x0

    .line 494
    .local v4, numberString:Ljava/lang/CharSequence;
    iget-wide v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mDefaultNumberId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 495
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 496
    const/4 v3, 0x0

    .line 497
    .local v3, match:Z
    iget v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-ne v12, v7, :cond_1

    .line 498
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 499
    .local v5, recordNumber:J
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    const/4 v8, 0x5

    invoke-direct {p0, v7, v8, v5, v6}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->moveToPosByIfEqual(Landroid/database/Cursor;IJ)Z

    move-result v3

    .line 510
    .end local v5           #recordNumber:J
    :goto_0
    if-eqz v3, :cond_0

    .line 511
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 512
    .local v0, currentIndex:I
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumbers:[Ljava/lang/CharSequence;

    aget-object v4, v7, v0

    .line 513
    iput v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I

    .line 536
    .end local v0           #currentIndex:I
    .end local v3           #match:Z
    :cond_0
    return-object v4

    .line 505
    .restart local v3       #match:Z
    :cond_1
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    iget-wide v8, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mDefaultNumberId:J

    invoke-direct {p0, v7, v11, v8, v9}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->moveToPosByIfEqual(Landroid/database/Cursor;IJ)Z

    move-result v3

    goto :goto_0

    .line 517
    .end local v3           #match:Z
    :cond_2
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 518
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    aget-object v1, v7, v2

    .line 519
    .local v1, entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    iget v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-ne v12, v7, :cond_4

    .line 520
    iput v11, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I

    .line 521
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumbers:[Ljava/lang/CharSequence;

    aget-object v4, v7, v11

    .line 517
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 523
    :cond_4
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    iget-wide v8, v1, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->data_id:J

    invoke-direct {p0, v7, v11, v8, v9}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->moveToPosByIfEqual(Landroid/database/Cursor;IJ)Z

    move-result v3

    .line 528
    .restart local v3       #match:Z
    if-eqz v3, :cond_3

    .line 529
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 530
    .restart local v0       #currentIndex:I
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumbers:[Ljava/lang/CharSequence;

    aget-object v4, v7, v0

    .line 531
    iput v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I

    goto :goto_2
.end method

.method private findNumberPosition_Enhance()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 541
    const/4 v4, 0x0

    .line 542
    .local v4, numberString:Ljava/lang/CharSequence;
    iget-wide v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mDefaultNumberId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 543
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 544
    const/4 v3, 0x0

    .line 545
    .local v3, match:Z
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    iget-wide v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mDefaultNumberId:J

    invoke-direct {p0, v5, v9, v6, v7}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->moveToPosByIfEqual(Landroid/database/Cursor;IJ)Z

    move-result v3

    .line 548
    if-eqz v3, :cond_0

    .line 549
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 550
    .local v0, currentIndex:I
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumbers:[Ljava/lang/CharSequence;

    aget-object v4, v5, v0

    .line 551
    iput v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I

    .line 576
    .end local v0           #currentIndex:I
    .end local v3           #match:Z
    :cond_0
    :goto_0
    return-object v4

    .line 555
    :cond_1
    const/4 v0, -0x1

    .line 556
    .restart local v0       #currentIndex:I
    const/4 v5, 0x1

    iget v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-ne v5, v6, :cond_3

    .line 557
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->moveToPosByRecordLoaction()I

    move-result v0

    .line 570
    :cond_2
    :goto_1
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 572
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumbers:[Ljava/lang/CharSequence;

    aget-object v4, v5, v0

    .line 573
    iput v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I

    goto :goto_0

    .line 559
    :cond_3
    const/4 v2, 0x0

    .local v2, index:I
    :goto_2
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 560
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    aget-object v1, v5, v2

    .line 561
    .local v1, entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    iget-wide v6, v1, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->data_id:J

    invoke-direct {p0, v5, v9, v6, v7}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->moveToPosByIfEqual(Landroid/database/Cursor;IJ)Z

    move-result v3

    .line 564
    .restart local v3       #match:Z
    if-eqz v3, :cond_4

    .line 565
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 566
    goto :goto_1

    .line 559
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private findViewById()V
    .locals 11

    .prologue
    const v9, 0x205002c

    const v8, 0x2020014

    const v7, 0x2020010

    const/4 v10, 0x0

    .line 367
    const/4 v2, 0x0

    .line 370
    .local v2, size:F
    const v5, 0x7f0b0049

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSeparator:Landroid/widget/TextView;

    .line 373
    const v5, 0x7f0b004a

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 374
    .local v4, view:Landroid/view/View;
    const/4 v3, 0x0

    .line 375
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #tv:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 376
    .restart local v3       #tv:Landroid/widget/TextView;
    const v5, 0x7f090019

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 377
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberButton:Landroid/widget/Button;

    .line 378
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isQHDProject()Z

    move-result v5

    if-nez v5, :cond_0

    const-wide/high16 v5, 0x400c

    invoke-static {v5, v6}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v5

    if-nez v5, :cond_0

    .line 379
    const v5, 0x2020019

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 383
    invoke-virtual {v3, v10, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 385
    :cond_1
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isTmoProject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 386
    const-string v5, "common_pulldown"

    const-string v6, "drawable"

    invoke-static {v5, v6, v10}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 388
    .local v1, resid:I
    if-eqz v1, :cond_2

    .line 389
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 394
    .end local v1           #resid:I
    :cond_2
    const v5, 0x7f0b004b

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 395
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #tv:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 396
    .restart local v3       #tv:Landroid/widget/TextView;
    const v5, 0x7f090032

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 397
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationButton:Landroid/widget/Button;

    .line 399
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v5

    if-nez v5, :cond_3

    .line 402
    const v5, 0x2020018

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :cond_3
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 405
    invoke-virtual {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 406
    invoke-virtual {v3, v10, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 409
    :cond_4
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, id:I
    invoke-virtual {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "editing_footer_left_button"

    const-string v7, "id"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 412
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSaveButton:Landroid/widget/Button;

    .line 413
    invoke-virtual {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "editing_footer_right_button"

    const-string v7, "id"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 414
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mCancelButton:Landroid/widget/Button;

    .line 419
    .end local v0           #id:I
    :goto_0
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isTmoProject()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 420
    const-string v5, "common_pulldown"

    const-string v6, "drawable"

    invoke-static {v5, v6, v10}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 422
    .restart local v1       #resid:I
    if-eqz v1, :cond_5

    .line 423
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 429
    .end local v1           #resid:I
    :cond_5
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 431
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "common_icon_save_on"

    const-string v8, "drawable"

    const-string v9, "com.htc"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v10, v6, v10, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 432
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "common_icon_cancel_on"

    const-string v8, "drawable"

    const-string v9, "com.htc"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v10, v6, v10, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 435
    :cond_6
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSaveButton:Landroid/widget/Button;

    const v6, 0x7f09001a

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 436
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mCancelButton:Landroid/widget/Button;

    const v6, 0x7f090043

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 438
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 439
    const v5, 0x2020080

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 442
    :cond_7
    return-void

    .line 416
    :cond_8
    const v5, 0x2020001

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSaveButton:Landroid/widget/Button;

    .line 417
    const v5, 0x2020003

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mCancelButton:Landroid/widget/Button;

    goto :goto_0
.end method

.method private getIndexById(J)I
    .locals 12
    .parameter "position"

    .prologue
    const/4 v7, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1062
    const-wide/16 v8, 0x0

    cmp-long v6, v8, p1

    if-lez v6, :cond_1

    iget v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-eq v10, v6, :cond_1

    move v3, v7

    .line 1115
    :cond_0
    :goto_0
    return v3

    .line 1067
    :cond_1
    const-wide/16 v0, -0x1

    .line 1069
    .local v0, _id:J
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1070
    const-wide/16 v4, -0x1

    .line 1071
    .local v4, numberloaction:J
    iget v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-eq v10, v6, :cond_4

    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    long-to-int v8, p1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1074
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1081
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .local v3, index:I
    :goto_2
    sget v6, Landroid/provider/HtcContactsContract$SpeedDial;->MAX_NUMBER:I

    if-ge v3, v6, :cond_b

    .line 1082
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    aget-object v2, v6, v3

    .line 1083
    .local v2, entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    if-eqz v2, :cond_3

    .line 1084
    iget v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-ne v10, v6, :cond_5

    .line 1085
    iget-wide v8, v2, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->record_number:J

    cmp-long v6, v0, v8

    if-nez v6, :cond_3

    iget-wide v8, v2, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->record_location:J

    cmp-long v6, v4, v8

    if-eqz v6, :cond_0

    .line 1081
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1075
    .end local v2           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .end local v3           #index:I
    :cond_4
    iget v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-ne v10, v6, :cond_2

    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    long-to-int v8, p1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1078
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1079
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    const/4 v8, 0x6

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_1

    .line 1088
    .restart local v2       #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .restart local v3       #index:I
    :cond_5
    iget-wide v8, v2, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->data_id:J

    cmp-long v6, v0, v8

    if-nez v6, :cond_3

    goto :goto_0

    .line 1094
    .end local v2           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .end local v3           #index:I
    .end local v4           #numberloaction:J
    :cond_6
    iget v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-eq v10, v6, :cond_9

    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    long-to-int v8, p1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1097
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1101
    :cond_7
    :goto_3
    const/4 v3, 0x0

    .restart local v3       #index:I
    :goto_4
    sget v6, Landroid/provider/HtcContactsContract$SpeedDial;->MAX_NUMBER:I

    if-ge v3, v6, :cond_b

    .line 1102
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    aget-object v2, v6, v3

    .line 1103
    .restart local v2       #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    if-eqz v2, :cond_8

    .line 1104
    iget v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-ne v10, v6, :cond_a

    .line 1105
    iget-wide v8, v2, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->record_number:J

    cmp-long v6, v0, v8

    if-eqz v6, :cond_0

    .line 1101
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1098
    .end local v2           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .end local v3           #index:I
    :cond_9
    iget v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-ne v10, v6, :cond_7

    .line 1099
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_3

    .line 1108
    .restart local v2       #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .restart local v3       #index:I
    :cond_a
    iget-wide v8, v2, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->data_id:J

    cmp-long v6, v0, v8

    if-nez v6, :cond_8

    goto/16 :goto_0

    .end local v2           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    :cond_b
    move v3, v7

    .line 1115
    goto/16 :goto_0
.end method

.method private getLocationStrings([Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;)[Ljava/lang/CharSequence;
    .locals 8
    .parameter "entries"

    .prologue
    .line 998
    invoke-static {}, Lcom/android/htcdialer/SpeedDialListActivity;->getServiceMap()Ljava/util/HashMap;

    move-result-object v4

    .line 999
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1000
    .local v5, preloadSize:I
    if-eqz v4, :cond_0

    .line 1001
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 1002
    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1003
    add-int/lit8 v5, v5, -0x1

    .line 1007
    :cond_0
    if-eqz p1, :cond_3

    .line 1008
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationStrings:[Ljava/lang/CharSequence;

    if-nez v6, :cond_1

    .line 1009
    array-length v6, p1

    sub-int/2addr v6, v5

    new-array v6, v6, [Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationStrings:[Ljava/lang/CharSequence;

    .line 1012
    :cond_1
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationStrings:[Ljava/lang/CharSequence;

    invoke-static {v6}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->removeAll([Ljava/lang/Object;)V

    .line 1014
    const/4 v2, 0x0

    .local v2, index:I
    const/4 v0, 0x0

    .local v0, entryIndex:I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_3

    .line 1015
    if-eqz v4, :cond_2

    aget-object v6, p1, v0

    iget v6, v6, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->location:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1016
    add-int/lit8 v0, v0, 0x1

    .line 1017
    goto :goto_0

    .line 1019
    :cond_2
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationStrings:[Ljava/lang/CharSequence;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #entryIndex:I
    .local v1, entryIndex:I
    aget-object v7, p1, v0

    iget-object v7, v7, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->displayString:Ljava/lang/String;

    aput-object v7, v6, v2

    move v0, v1

    .end local v1           #entryIndex:I
    .restart local v0       #entryIndex:I
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 1023
    .end local v0           #entryIndex:I
    .end local v2           #index:I
    :cond_3
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationStrings:[Ljava/lang/CharSequence;

    return-object v6
.end method

.method private getPhoneNumberStringByPosition(Landroid/database/Cursor;I)Ljava/lang/CharSequence;
    .locals 6
    .parameter "phoneInfoCursor"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1034
    if-nez p1, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-object v3

    .line 1038
    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1048
    .local v1, sb:Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-eq v5, v3, :cond_2

    .line 1049
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1050
    .local v2, type:I
    invoke-static {p0, v2}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberTypeShortStringWithColon(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    .end local v2           #type:I
    :cond_2
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1055
    .local v0, number:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private initActionButton()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/htcdialer/EditSpeedDialEntryActivity$1;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity$1;-><init>(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/htcdialer/EditSpeedDialEntryActivity$2;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity$2;-><init>(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    :cond_1
    return-void
.end method

.method private initAndUpdateSpeedDials([Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;)V
    .locals 15
    .parameter "entries"

    .prologue
    .line 818
    invoke-static/range {p1 .. p1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->removeAll([Ljava/lang/Object;)V

    .line 823
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    invoke-virtual {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/htcdialer/util/SpeedDialUtils;->PROJECTION_MAP_1:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 835
    .local v12, mSpeedDialCursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 836
    new-instance v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    invoke-direct {v9}, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;-><init>()V

    .line 837
    .local v9, entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->_id:J

    .line 838
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->location:I

    .line 839
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->name:Ljava/lang/String;

    .line 840
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->number:Ljava/lang/String;

    .line 841
    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->type:I

    .line 842
    const/4 v0, 0x5

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->raw_contact_id:J

    .line 843
    const/4 v0, 0x7

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->data_id:J

    .line 844
    const/4 v0, 0x6

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->record_number:J

    .line 846
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    const/16 v0, 0x9

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->record_location:J

    .line 851
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 852
    .local v14, sb:Ljava/lang/StringBuilder;
    iget v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->location:I

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 853
    const-string v0, ": "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 855
    .local v6, available:Ljava/lang/String;
    iget-object v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 856
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    :goto_1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->displayString:Ljava/lang/String;

    .line 862
    const/4 v13, 0x0

    .line 868
    .local v13, mapToIndex:I
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x28

    if-ne v0, v1, :cond_4

    .line 870
    iget v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->location:I

    sget v1, Lcom/android/htcdialer/SpeedDialListActivity;->MAX_SERVICE_NUMBER:I

    sub-int/2addr v0, v1

    add-int/lit8 v13, v0, -0x1

    .line 877
    :goto_2
    aput-object v9, p1, v13

    .line 879
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-ne v0, v1, :cond_5

    iget-wide v7, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->record_number:J

    .line 882
    .local v7, currentId:J
    :goto_3
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMySpeedDials:Ljava/util/ArrayList;

    iget-wide v1, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->_id:J

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 827
    .end local v6           #available:Ljava/lang/String;
    .end local v7           #currentId:J
    .end local v9           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .end local v12           #mSpeedDialCursor:Landroid/database/Cursor;
    .end local v13           #mapToIndex:I
    .end local v14           #sb:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/htcdialer/util/SpeedDialUtils;->PROJECTION_MAP:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .restart local v12       #mSpeedDialCursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 858
    .restart local v6       #available:Ljava/lang/String;
    .restart local v9       #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->name:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 874
    .restart local v13       #mapToIndex:I
    :cond_4
    iget v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->location:I

    add-int/lit8 v13, v0, -0x2

    goto :goto_2

    .line 879
    :cond_5
    iget-wide v7, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->raw_contact_id:J

    goto :goto_3

    .line 887
    .end local v6           #available:Ljava/lang/String;
    .end local v9           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .end local v13           #mapToIndex:I
    .end local v14           #sb:Ljava/lang/StringBuilder;
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 888
    const/4 v12, 0x0

    .line 890
    const/4 v10, 0x0

    .local v10, index:I
    :goto_4
    sget v0, Landroid/provider/HtcContactsContract$SpeedDial;->MAX_NUMBER:I

    if-ge v10, v0, :cond_9

    .line 891
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    aget-object v0, v0, v10

    if-nez v0, :cond_7

    .line 892
    new-instance v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    invoke-direct {v9}, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;-><init>()V

    .line 901
    .restart local v9       #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x28

    if-ne v0, v1, :cond_8

    .line 903
    sget v0, Lcom/android/htcdialer/SpeedDialListActivity;->MAX_SERVICE_NUMBER:I

    add-int/2addr v0, v10

    int-to-long v0, v0

    iput-wide v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->_id:J

    .line 904
    sget v0, Lcom/android/htcdialer/SpeedDialListActivity;->MAX_SERVICE_NUMBER:I

    add-int/2addr v0, v10

    add-int/lit8 v11, v0, 0x1

    .line 911
    .local v11, location:I
    :goto_5
    iput v11, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->location:I

    .line 912
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 914
    const-string v0, ": "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 916
    .restart local v6       #available:Ljava/lang/String;
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->displayString:Ljava/lang/String;

    .line 918
    aput-object v9, p1, v10

    .line 890
    .end local v6           #available:Ljava/lang/String;
    .end local v9           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .end local v11           #location:I
    .end local v14           #sb:Ljava/lang/StringBuilder;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 908
    .restart local v9       #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    :cond_8
    add-int/lit8 v0, v10, 0x1

    int-to-long v0, v0

    iput-wide v0, v9, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->_id:J

    .line 909
    add-int/lit8 v11, v10, 0x2

    .restart local v11       #location:I
    goto :goto_5

    .line 921
    .end local v9           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .end local v11           #location:I
    :cond_9
    return-void
.end method

.method private initButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 450
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->initNumberButton()I

    .line 452
    iget v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I

    invoke-direct {p0, v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->initLocationButton(I)V

    .line 453
    iget v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectLocationPosition:I

    if-ne v0, v1, :cond_1

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 458
    :cond_1
    return-void
.end method

.method private initLocationButton(I)V
    .locals 4
    .parameter "mySelectPhoneIndex"

    .prologue
    const/4 v3, -0x1

    .line 584
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->setupLocationButtonListener()V

    .line 590
    if-le p1, v3, :cond_0

    iget v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectLocationPosition:I

    if-gt v2, v3, :cond_0

    .line 592
    int-to-long v2, p1

    invoke-direct {p0, v2, v3}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getIndexById(J)I

    move-result v2

    iput v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectLocationPosition:I

    .line 594
    :cond_0
    iget v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectLocationPosition:I

    if-ltz v2, :cond_1

    .line 595
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    iget v3, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectLocationPosition:I

    aget-object v0, v2, v3

    .line 596
    .local v0, entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    iget-object v1, v0, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->displayString:Ljava/lang/String;

    .line 600
    .end local v0           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .local v1, locationString:Ljava/lang/CharSequence;
    :goto_0
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 601
    return-void

    .line 598
    .end local v1           #locationString:Ljava/lang/CharSequence;
    :cond_1
    const v2, 0x7f090036

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #locationString:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private initMyNumbers()Z
    .locals 4

    .prologue
    .line 723
    iget-object v3, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumbers:[Ljava/lang/CharSequence;

    invoke-static {v3}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->removeAll([Ljava/lang/Object;)V

    .line 724
    iget-object v3, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    .line 725
    const/4 v3, 0x0

    .line 735
    :goto_0
    return v3

    .line 727
    :cond_0
    iget-object v3, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 728
    .local v1, myPhonesCount:I
    new-array v3, v1, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumbers:[Ljava/lang/CharSequence;

    .line 729
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 730
    iget-object v3, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getPhoneNumberStringByPosition(Landroid/database/Cursor;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 731
    .local v2, number:Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 732
    iget-object v3, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumbers:[Ljava/lang/CharSequence;

    aput-object v2, v3, v0

    .line 729
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 735
    .end local v2           #number:Ljava/lang/CharSequence;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private initMyRawContactIds()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 295
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    :cond_0
    iget v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-ne v5, v2, :cond_3

    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 300
    .local v0, id:J
    :goto_0
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    iget v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-ne v5, v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRecordLocation:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    .end local v0           #id:J
    :cond_2
    return-void

    .line 297
    :cond_3
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private initNumberButton()I
    .locals 2

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumbers:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->initMyNumbers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    const/4 v1, -0x1

    .line 488
    :goto_0
    return v1

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->setupPhoneNumberListener()V

    .line 472
    const/4 v0, 0x0

    .line 476
    .local v0, numberString:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findNumberPosition_Enhance()Ljava/lang/CharSequence;

    move-result-object v0

    .line 483
    :goto_1
    if-nez v0, :cond_1

    .line 485
    const v1, 0x7f090036

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I

    goto :goto_0

    .line 479
    :cond_2
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findNumberPosition()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method private moveToPosByDataId()I
    .locals 9

    .prologue
    .line 776
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMySpeedDials:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 777
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMySpeedDials:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 778
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMySpeedDials:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 779
    .local v4, speedDial_id:I
    add-int/lit8 v3, v4, -0x1

    .line 782
    .local v3, mapToIndex:I
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    aget-object v0, v5, v3

    .line 783
    .local v0, entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    iget-wide v5, v0, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->data_id:J

    iget-wide v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mDefaultNumberId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 784
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRecordLocation:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 785
    const/4 v2, 0x0

    .local v2, index_location:I
    :goto_1
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRecordLocation:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 786
    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRecordLocation:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->record_location:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 797
    .end local v0           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .end local v1           #index:I
    .end local v2           #index_location:I
    .end local v3           #mapToIndex:I
    .end local v4           #speedDial_id:I
    :goto_2
    return v2

    .line 785
    .restart local v0       #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .restart local v1       #index:I
    .restart local v2       #index_location:I
    .restart local v3       #mapToIndex:I
    .restart local v4       #speedDial_id:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 777
    .end local v2           #index_location:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 797
    .end local v0           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .end local v1           #index:I
    .end local v3           #mapToIndex:I
    .end local v4           #speedDial_id:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_2
.end method

.method private moveToPosByIfEqual(Landroid/database/Cursor;IJ)Z
    .locals 2
    .parameter "cursor"
    .parameter "index"
    .parameter "key"

    .prologue
    .line 739
    if-eqz p1, :cond_2

    .line 740
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 742
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 743
    const/4 v0, 0x1

    .line 749
    :goto_0
    return v0

    .line 745
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToPosByRecordLoaction()I
    .locals 10

    .prologue
    .line 753
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMySpeedDials:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 754
    const/4 v4, 0x0

    .line 755
    .local v4, match:Z
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMySpeedDials:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 756
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMySpeedDials:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 758
    .local v5, speedDial_id:I
    add-int/lit8 v3, v5, -0x1

    .line 762
    .local v3, mapToIndex:I
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    aget-object v0, v6, v3

    .line 763
    .local v0, entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRecordLocation:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 764
    const/4 v2, 0x0

    .local v2, index_location:I
    :goto_1
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRecordLocation:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 765
    iget-object v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRecordLocation:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->record_location:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 772
    .end local v0           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .end local v1           #index:I
    .end local v2           #index_location:I
    .end local v3           #mapToIndex:I
    .end local v4           #match:Z
    .end local v5           #speedDial_id:I
    :goto_2
    return v2

    .line 764
    .restart local v0       #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .restart local v1       #index:I
    .restart local v2       #index_location:I
    .restart local v3       #mapToIndex:I
    .restart local v4       #match:Z
    .restart local v5       #speedDial_id:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 755
    .end local v2           #index_location:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 772
    .end local v0           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .end local v1           #index:I
    .end local v3           #mapToIndex:I
    .end local v4           #match:Z
    .end local v5           #speedDial_id:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_2
.end method

.method private parseExtraAndInit(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 350
    if-nez p1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->setName(Ljava/lang/String;)V

    .line 357
    const-string v2, "number_id"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mDefaultNumberId:J

    .line 358
    const-string v2, "number"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, defaultNumberString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static removeAll([Ljava/lang/Object;)V
    .locals 3
    .parameter "array"

    .prologue
    .line 1123
    if-eqz p0, :cond_0

    .line 1124
    array-length v1, p0

    .line 1125
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1126
    const/4 v2, 0x0

    aput-object v2, p0, v0

    .line 1125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1129
    .end local v0           #index:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method private resolveIntentAndInit()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 220
    invoke-virtual {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 222
    .local v3, intent:Landroid/content/Intent;
    invoke-direct {p0, v3}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->parseExtraAndInit(Landroid/content/Intent;)V

    .line 224
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 225
    .local v2, data:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 226
    iput-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLookupUri:Landroid/net/Uri;

    .line 227
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, authority:Ljava/lang/String;
    const-string v7, "com.android.contacts"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 230
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLookupUri:Landroid/net/Uri;

    const-string v8, "account_type"

    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, account:Ljava/lang/String;
    const-string v7, "com.anddroid.contacts.sim"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 234
    iput v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    .line 275
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #authority:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 236
    .restart local v0       #account:Ljava/lang/String;
    .restart local v1       #authority:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, mimeType:Ljava/lang/String;
    const-string v7, "vnd.android.cursor.item/contacts_sim"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 239
    iput v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    goto :goto_0

    .line 241
    :cond_2
    iput v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    goto :goto_0

    .line 262
    .end local v0           #account:Ljava/lang/String;
    .end local v4           #mimeType:Ljava/lang/String;
    :cond_3
    const-string v7, "contacts"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 263
    iput v6, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    goto :goto_0

    :cond_4
    move v5, v6

    .line 272
    goto :goto_0
.end method

.method private save()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 656
    iget v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I

    if-eq v7, v8, :cond_4

    iget v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectLocationPosition:I

    if-eq v7, v8, :cond_4

    .line 658
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 661
    .local v4, values:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    iget v8, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 718
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_0
    return v5

    .line 665
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_0
    sget-boolean v7, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-eqz v7, :cond_1

    .line 667
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, nnumber:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 671
    const v6, 0x7f090004

    invoke-direct {p0, v6}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->showToast(I)V

    goto :goto_0

    .line 677
    .end local v2           #nnumber:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 679
    .local v1, entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    :try_start_0
    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    iget v8, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectLocationPosition:I

    aget-object v1, v7, v8
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    iget v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMode:I

    if-ne v6, v7, :cond_5

    .line 685
    const-string v5, "recordNumber"

    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 688
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 689
    const-string v5, "recordLocation"

    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    const/4 v8, 0x6

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 693
    :cond_2
    const-string v5, "data_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 694
    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 711
    :cond_3
    :goto_1
    sget-object v5, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v1, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->_id:J

    invoke-static {v5, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 713
    .local v3, updateUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v1           #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .end local v3           #updateUri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_4
    move v5, v6

    .line 718
    goto :goto_0

    .line 680
    .restart local v1       #entry:Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    .restart local v4       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 681
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0

    .line 696
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    const-string v7, "data_id"

    iget-object v8, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    const-string v5, "raw_contact_id"

    iget-object v7, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 701
    const-string v5, "recordNumber"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 703
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 704
    const-string v5, "recordLocation"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveFailHandling()V
    .locals 0

    .prologue
    .line 1120
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    iput-object p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mName:Ljava/lang/String;

    .line 808
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSeparator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 809
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 810
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSeparator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSeparator:Landroid/widget/TextView;

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setupLocationButtonListener()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;-><init>(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 957
    return-void
.end method

.method private setupPhoneNumberListener()V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;-><init>(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 994
    return-void
.end method

.method private showToast(I)V
    .locals 1
    .parameter "stringId"

    .prologue
    .line 638
    new-instance v0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity$3;-><init>(Lcom/android/htcdialer/EditSpeedDialEntryActivity;I)V

    .line 645
    .local v0, r:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 646
    return-void
.end method

.method private updateAndInit()V
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->initMyNumbers()Z

    .line 344
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->initMyRawContactIds()V

    .line 345
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    invoke-direct {p0, v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->initAndUpdateSpeedDials([Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;)V

    .line 346
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->initButtons()V

    .line 347
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->setContentView(I)V

    .line 189
    new-instance v3, Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;

    invoke-direct {v3, p0, p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;-><init>(Lcom/android/htcdialer/EditSpeedDialEntryActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mHandler:Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;

    .line 192
    const v3, 0x7f0b006c

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarShort;

    .line 193
    .local v1, headerBar:Lcom/htc/widget/HeaderBarShort;
    if-eqz v1, :cond_0

    .line 194
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarShort;->enableSecondBackground(Z)V

    .line 197
    :cond_0
    const v3, 0x20201ba

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    .line 198
    .local v2, titlebar:Lcom/htc/widget/HeaderBarText;
    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 199
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 202
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->resolveIntentAndInit()Z

    .line 205
    const v3, 0x7f0b004c

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/widget/ButtonGroup;

    .line 207
    .local v0, cmdBar:Lcom/android/htcdialer/widget/ButtonGroup;
    invoke-virtual {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "save_cancel_footer"

    const-string v5, "layout"

    const-string v6, "com.android.htcdialer"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/widget/ButtonGroup;->setLayoutResources(I)V

    .line 211
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->findViewById()V

    .line 212
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->initButtons()V

    .line 213
    invoke-direct {p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->initActionButton()V

    .line 217
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 316
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMySpeedDials:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMySpeedDials:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 324
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRecordLocation:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mRecordLocation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 333
    iput-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 337
    iput-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 339
    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 282
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mUserId:J

    .line 283
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mUserId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mUri:Landroid/net/Uri;

    .line 284
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mUri:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 285
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mHandler:Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;

    const/4 v1, 0x2

    sget-object v4, Lcom/android/htcdialer/EditSpeedDialEntryActivity$NAME_INFO;->COLUMNS:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method
