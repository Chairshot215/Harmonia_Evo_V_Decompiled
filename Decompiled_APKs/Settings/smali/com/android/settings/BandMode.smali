.class public Lcom/android/settings/BandMode;
.super Landroid/app/Activity;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BandMode$BandListItem;
    }
.end annotation


# static fields
.field private static final BAND_NAMES:[Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final EVENT_BAND_SCAN_COMPLETED:I = 0x64

.field private static final EVENT_BAND_SELECTION_DONE:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "phone"


# instance fields
.field private mBandList:Landroid/widget/ListView;

.field private mBandListAdapter:Landroid/widget/ArrayAdapter;

.field private mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressPanel:Landroid/content/DialogInterface;

.field private mTargetBand:Lcom/android/settings/BandMode$BandListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Automatic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EURO Band"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "USA Band"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "JAPAN Band"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AUS Band"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AUS2 Band"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Cellular (800-MHz Band)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PCS (1900-MHz Band)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "JTACS Band"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Korean PCS Band"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "450-MHz Band"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "2-GMHz IMT2000 Band"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Upper 700-MHz Band"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "1800-MHz Band"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "900-MHz Band"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Secondary 800-MHz Band"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "400-MHz European PAMR Band"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "AWS Band"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "US 2.5-GHz Band"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    .line 80
    iput-object v0, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 107
    new-instance v0, Lcom/android/settings/BandMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BandMode$1;-><init>(Lcom/android/settings/BandMode;)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    .line 227
    new-instance v0, Lcom/android/settings/BandMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings/BandMode$2;-><init>(Lcom/android/settings/BandMode;)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BandMode;)Lcom/android/settings/BandMode$BandListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/BandMode;Lcom/android/settings/BandMode$BandListItem;)Lcom/android/settings/BandMode$BandListItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/BandMode;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/BandMode;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/settings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/BandMode;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/BandMode;->bandListLoaded(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/BandMode;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/BandMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method private bandListLoaded(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 161
    iget-object v5, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    invoke-interface {v5}, Landroid/content/DialogInterface;->dismiss()V

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/BandMode;->clearList()V

    .line 165
    const/4 v0, 0x0

    .line 168
    .local v0, addBandSuccess:Z
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 169
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v1, v5

    check-cast v1, [I

    .line 174
    .local v1, bands:[I
    const/4 v4, 0x0

    .line 175
    .local v4, size:I
    array-length v5, v1

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 176
    array-length v4, v1

    .line 180
    :cond_1
    if-lez v4, :cond_3

    .line 181
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 182
    new-instance v3, Lcom/android/settings/BandMode$BandListItem;

    aget v5, v1, v2

    invoke-direct {v3, v5}, Lcom/android/settings/BandMode$BandListItem;-><init>(I)V

    .line 183
    .local v3, item:Lcom/android/settings/BandMode$BandListItem;
    iget-object v5, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v3           #item:Lcom/android/settings/BandMode$BandListItem;
    :cond_2
    const/4 v0, 0x1

    .line 190
    .end local v1           #bands:[I
    .end local v2           #i:I
    .end local v4           #size:I
    :cond_3
    if-nez v0, :cond_4

    .line 192
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    const/4 v5, 0x6

    if-ge v2, v5, :cond_4

    .line 193
    new-instance v3, Lcom/android/settings/BandMode$BandListItem;

    invoke-direct {v3, v2}, Lcom/android/settings/BandMode$BandListItem;-><init>(I)V

    .line 194
    .restart local v3       #item:Lcom/android/settings/BandMode$BandListItem;
    iget-object v5, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 198
    .end local v2           #i:I
    .end local v3           #item:Lcom/android/settings/BandMode$BandListItem;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->requestFocus()Z

    .line 199
    return-void
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 217
    :goto_0
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method private displayBandSelectionResult(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "ex"

    .prologue
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c0823

    invoke-virtual {p0, v2}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    invoke-virtual {v2}, Lcom/android/settings/BandMode$BandListItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, status:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0824

    invoke-virtual {p0, v2}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 214
    return-void

    .line 208
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0825

    invoke-virtual {p0, v2}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadBandList()V
    .locals 4

    .prologue
    .line 143
    const v2, 0x7f0c0822

    invoke-virtual {p0, v2}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, str:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 153
    iget-object v2, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 154
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 156
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 224
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BandsList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->requestWindowFeature(I)Z

    .line 88
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->setContentView(I)V

    .line 90
    const v0, 0x7f0c0821

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/BandMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 94
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 96
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    .line 97
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    .line 99
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/BandMode;->loadBandList()V

    .line 105
    return-void
.end method
