.class public Lcom/android/dmportread/DMPortActivity;
.super Landroid/app/Activity;
.source "DMPortActivity.java"


# static fields
.field private static final UPDATE_VIEW:I = 0x12


# instance fields
.field private connectionBind:Z

.field private intRxCnt:I

.field private intRxUSB:I

.field private intTxCnt:I

.field private intTxUSB:I

.field private mBoundService:Lcom/android/dmportread/DMCommandService;

.field private mCancelBut:Landroid/widget/Button;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mHandler:Landroid/os/Handler;

.field private mNoBut:Landroid/widget/Button;

.field private mRxUSB:Landroid/widget/TextView;

.field private mRxView:Landroid/widget/TextView;

.field private mSPCHandler:Landroid/os/Handler;

.field private mServiceOn:Z

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTxUSB:Landroid/widget/TextView;

.field private mTxView:Landroid/widget/TextView;

.field private mYesBut:Landroid/widget/Button;

.field miscHandler:Landroid/os/Handler;

.field private rxCount:I

.field private tryMSL:I

.field private txCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    iput v1, p0, Lcom/android/dmportread/DMPortActivity;->txCount:I

    .line 89
    iput v1, p0, Lcom/android/dmportread/DMPortActivity;->rxCount:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mBoundService:Lcom/android/dmportread/DMCommandService;

    .line 93
    iput-boolean v1, p0, Lcom/android/dmportread/DMPortActivity;->connectionBind:Z

    .line 94
    iput v1, p0, Lcom/android/dmportread/DMPortActivity;->tryMSL:I

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mSPCHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/android/dmportread/DMPortActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dmportread/DMPortActivity$1;-><init>(Lcom/android/dmportread/DMPortActivity;)V

    iput-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 484
    iput v1, p0, Lcom/android/dmportread/DMPortActivity;->intRxCnt:I

    .line 485
    iput v1, p0, Lcom/android/dmportread/DMPortActivity;->intTxCnt:I

    .line 486
    iput v1, p0, Lcom/android/dmportread/DMPortActivity;->intRxUSB:I

    .line 487
    iput v1, p0, Lcom/android/dmportread/DMPortActivity;->intTxUSB:I

    .line 488
    new-instance v0, Lcom/android/dmportread/DMPortActivity$8;

    invoke-direct {v0, p0}, Lcom/android/dmportread/DMPortActivity$8;-><init>(Lcom/android/dmportread/DMPortActivity;)V

    iput-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 524
    new-instance v0, Lcom/android/dmportread/DMPortActivity$9;

    invoke-direct {v0, p0}, Lcom/android/dmportread/DMPortActivity$9;-><init>(Lcom/android/dmportread/DMPortActivity;)V

    iput-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mHandler:Landroid/os/Handler;

    .line 563
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dmportread/DMPortActivity;->miscHandler:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/dmportread/DMPortActivity;)Lcom/android/dmportread/DMCommandService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mBoundService:Lcom/android/dmportread/DMCommandService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/dmportread/DMPortActivity;Lcom/android/dmportread/DMCommandService;)Lcom/android/dmportread/DMCommandService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity;->mBoundService:Lcom/android/dmportread/DMCommandService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/dmportread/DMPortActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/dmportread/DMPortActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/dmportread/DMPortActivity;->intTxCnt:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/dmportread/DMPortActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/dmportread/DMPortActivity;->intTxCnt:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/dmportread/DMPortActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/dmportread/DMPortActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/dmportread/DMPortActivity;->intRxUSB:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/dmportread/DMPortActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/dmportread/DMPortActivity;->intRxUSB:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/dmportread/DMPortActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/dmportread/DMPortActivity;->intTxUSB:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/dmportread/DMPortActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/dmportread/DMPortActivity;->intTxUSB:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/dmportread/DMPortActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mRxView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mTxView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/dmportread/DMPortActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/dmportread/DMPortActivity;->rxCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mRxUSB:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/dmportread/DMPortActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/dmportread/DMPortActivity;->txCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mTxUSB:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dmportread/DMPortActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/dmportread/DMPortActivity;->updateButtons()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dmportread/DMPortActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/dmportread/DMPortActivity;->connectionBind:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/dmportread/DMPortActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/dmportread/DMPortActivity;->connectionBind:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dmportread/DMPortActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/dmportread/DMPortActivity;->tryMSL:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/dmportread/DMPortActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/dmportread/DMPortActivity;->tryMSL:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/dmportread/DMPortActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mSPCHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/dmportread/DMPortActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/dmportread/DMPortActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/dmportread/DMPortActivity;->intRxCnt:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/dmportread/DMPortActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/dmportread/DMPortActivity;->intRxCnt:I

    return p1
.end method

.method private updateButtons()V
    .locals 3

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mBoundService:Lcom/android/dmportread/DMCommandService;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mRxView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dmportread/DMPortActivity;->mBoundService:Lcom/android/dmportread/DMCommandService;

    invoke-virtual {v1}, Lcom/android/dmportread/DMCommandService;->getRxCnt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mTxView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dmportread/DMPortActivity;->mBoundService:Lcom/android/dmportread/DMCommandService;

    invoke-virtual {v1}, Lcom/android/dmportread/DMCommandService;->getTxCnt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mRxUSB:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dmportread/DMPortActivity;->mBoundService:Lcom/android/dmportread/DMCommandService;

    invoke-virtual {v1}, Lcom/android/dmportread/DMCommandService;->getRxUSB()I

    move-result v1

    iget v2, p0, Lcom/android/dmportread/DMPortActivity;->rxCount:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mTxUSB:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dmportread/DMPortActivity;->mBoundService:Lcom/android/dmportread/DMCommandService;

    invoke-virtual {v1}, Lcom/android/dmportread/DMCommandService;->getTxUSB()I

    move-result v1

    iget v2, p0, Lcom/android/dmportread/DMPortActivity;->txCount:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :cond_0
    return-void

    .line 468
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 16
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xaf

    if-eq v11, v12, :cond_0

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xc

    if-ne v11, v12, :cond_2

    .line 130
    :cond_0
    const v11, 0x7f030002

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/dmportread/DMPortActivity;->setContentView(I)V

    .line 132
    const v11, 0x7f060005

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/dmportread/DMPortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;

    .line 133
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;

    new-instance v12, Lcom/android/dmportread/DMPortActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/dmportread/DMPortActivity$2;-><init>(Lcom/android/dmportread/DMPortActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v11, 0x7f060007

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/dmportread/DMPortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;

    .line 145
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;

    new-instance v12, Lcom/android/dmportread/DMPortActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/dmportread/DMPortActivity$3;-><init>(Lcom/android/dmportread/DMPortActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const/4 v8, 0x0

    .line 156
    .local v8, fis:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 157
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 158
    .local v4, dis:Ljava/io/DataInputStream;
    const/4 v10, -0x1

    .line 159
    .local v10, temp:I
    new-instance v7, Ljava/io/File;

    const-string v11, "/data/data/com.android.dmportread/boot"

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v7, file:Ljava/io/File;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v8           #fis:Ljava/io/FileInputStream;
    .local v9, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 164
    .end local v4           #dis:Ljava/io/DataInputStream;
    .local v5, dis:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v10

    .line 165
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 166
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 167
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v4, v5

    .end local v5           #dis:Ljava/io/DataInputStream;
    .restart local v4       #dis:Ljava/io/DataInputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .line 172
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :goto_0
    const/16 v11, 0x31

    if-ne v10, v11, :cond_1

    .line 173
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;

    const/16 v12, 0xff

    const/16 v13, 0x80

    const/16 v14, 0x80

    const/16 v15, 0x80

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;

    const/16 v12, 0xff

    const/16 v13, 0xc0

    const/16 v14, 0xc0

    const/16 v15, 0xc0

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    :goto_1
    const v11, 0x7f060006

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/dmportread/DMPortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mCancelBut:Landroid/widget/Button;

    .line 185
    move-object/from16 v1, p0

    .line 186
    .local v1, atmpContext:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mCancelBut:Landroid/widget/Button;

    new-instance v12, Lcom/android/dmportread/DMPortActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1}, Lcom/android/dmportread/DMPortActivity$4;-><init>(Lcom/android/dmportread/DMPortActivity;Landroid/content/Context;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .end local v1           #atmpContext:Landroid/content/Context;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #dis:Ljava/io/DataInputStream;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v10           #temp:I
    :goto_2
    return-void

    .line 169
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #dis:Ljava/io/DataInputStream;
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v10       #temp:I
    :catch_0
    move-exception v6

    .line 170
    .local v6, e:Ljava/lang/Exception;
    :goto_3
    const-string v11, "DMPORTC"

    const-string v12, "no value"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;

    const/16 v12, 0xff

    const/16 v13, 0x80

    const/16 v14, 0x80

    const/16 v15, 0x80

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;

    const/16 v12, 0xff

    const/16 v13, 0xc0

    const/16 v14, 0xc0

    const/16 v15, 0xc0

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 359
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #dis:Ljava/io/DataInputStream;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v10           #temp:I
    :cond_2
    const-string v11, "DMPORTC"

    const-string v12, "Start"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const v11, 0x7f030001

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/dmportread/DMPortActivity;->setContentView(I)V

    .line 362
    const v11, 0x7f060002

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/dmportread/DMPortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mRxUSB:Landroid/widget/TextView;

    .line 363
    const v11, 0x7f060001

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/dmportread/DMPortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mTxUSB:Landroid/widget/TextView;

    .line 365
    const v11, 0x7f060003

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/dmportread/DMPortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mRxView:Landroid/widget/TextView;

    .line 366
    const v11, 0x7f060004

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/dmportread/DMPortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mTxView:Landroid/widget/TextView;

    .line 367
    const v11, 0x7f060005

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/dmportread/DMPortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;

    .line 368
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;

    new-instance v12, Lcom/android/dmportread/DMPortActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/dmportread/DMPortActivity$5;-><init>(Lcom/android/dmportread/DMPortActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    const v11, 0x7f060007

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/dmportread/DMPortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;

    .line 382
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0xa0

    const/16 v14, 0x3c

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;

    new-instance v12, Lcom/android/dmportread/DMPortActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/dmportread/DMPortActivity$6;-><init>(Lcom/android/dmportread/DMPortActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    const v11, 0x7f060006

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/dmportread/DMPortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mCancelBut:Landroid/widget/Button;

    .line 397
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mCancelBut:Landroid/widget/Button;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dmportread/DMPortActivity;->mCancelBut:Landroid/widget/Button;

    new-instance v12, Lcom/android/dmportread/DMPortActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/dmportread/DMPortActivity$7;-><init>(Lcom/android/dmportread/DMPortActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    if-nez p1, :cond_3

    .line 407
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z

    .line 411
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/dmportread/DMPortActivity;->updateButtons()V

    goto/16 :goto_2

    .line 409
    :cond_3
    const-string v11, "mServiceOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z

    goto :goto_4

    .line 169
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #dis:Ljava/io/DataInputStream;
    .restart local v7       #file:Ljava/io/File;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v10       #temp:I
    :catch_1
    move-exception v6

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #dis:Ljava/io/DataInputStream;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #dis:Ljava/io/DataInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    move-object v4, v5

    .end local v5           #dis:Ljava/io/DataInputStream;
    .restart local v4       #dis:Ljava/io/DataInputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 553
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 554
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    .line 556
    const-string v0, "Reboot to enable Embedded mode "

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 560
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 559
    :cond_0
    const-string v0, "Disable"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 548
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 549
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 566
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 567
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 642
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 569
    :pswitch_0
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->miscHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/dmportread/DMPortActivity$10;

    invoke-direct {v1, p0}, Lcom/android/dmportread/DMPortActivity$10;-><init>(Lcom/android/dmportread/DMPortActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 542
    const-string v0, "mServiceOn"

    iget-boolean v1, p0, Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 543
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 544
    return-void
.end method

.method public onStart()V
    .locals 13

    .prologue
    .line 417
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 418
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xaf

    if-eq v10, v11, :cond_0

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xc

    if-ne v10, v11, :cond_2

    .line 420
    :cond_0
    const/4 v7, 0x0

    .line 421
    .local v7, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 422
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 423
    .local v2, dis:Ljava/io/DataInputStream;
    const/4 v9, -0x1

    .line 424
    .local v9, temp:I
    new-instance v6, Ljava/io/File;

    const-string v10, "/data/data/com.android.dmportread/boot"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v6, file:Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 429
    .end local v2           #dis:Ljava/io/DataInputStream;
    .local v3, dis:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 430
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 431
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 432
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 437
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :goto_0
    const/16 v10, 0x31

    if-ne v9, v10, :cond_1

    .line 438
    iget-object v10, p0, Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->performClick()Z

    .line 439
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/android/dmportread/DMCommandService;

    invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Lcom/android/dmportread/DMPortActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 451
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v6           #file:Ljava/io/File;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #temp:I
    :cond_1
    :goto_1
    return-void

    .line 434
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v9       #temp:I
    :catch_0
    move-exception v4

    .line 435
    .local v4, e:Ljava/lang/Exception;
    :goto_2
    const-string v10, "DMPORTC"

    const-string v11, "no value"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #file:Ljava/io/File;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #temp:I
    :cond_2
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/android/dmportread/DMCommandService;

    invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v11, p0, Lcom/android/dmportread/DMPortActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/dmportread/DMPortActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 444
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 445
    .local v5, f:Landroid/content/IntentFilter;
    const-string v10, "com.android.dmportread.UPDATE_VIEW"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v10, "com.android.dmportread.DM_MiscConfig"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    iget-object v10, p0, Lcom/android/dmportread/DMPortActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11, v5}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v10, v11}, Lcom/android/dmportread/DMPortActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 448
    iget-object v10, p0, Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->performClick()Z

    goto :goto_1

    .line 434
    .end local v5           #f:Landroid/content/IntentFilter;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .restart local v6       #file:Ljava/io/File;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v9       #temp:I
    :catch_1
    move-exception v4

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 454
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 456
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dmportread/DMPortActivity;->tryMSL:I

    .line 463
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 464
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/dmportread/DMPortActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mBoundService:Lcom/android/dmportread/DMCommandService;

    .line 461
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/dmportread/DMPortActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
