.class public Lcom/htc/dmc/DmrListActivity$DlnaInfo;
.super Ljava/lang/Object;
.source "DmrListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/DmrListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DlnaInfo"
.end annotation


# static fields
.field private static final ICONTYPE_BOSE:I = 0x3e9

.field private static final ITEMTYPE_BT:I = 0x5

.field private static final ITEMTYPE_BT_HEADER:I = 0x4

.field private static final ITEMTYPE_EMPTY:I = 0xa

.field private static final ITEMTYPE_MY:I = 0x1

.field private static final ITEMTYPE_MY_HEADER:I = 0x0

.field private static final ITEMTYPE_WIFI:I = 0x3

.field private static final ITEMTYPE_WIFI_HEADER:I = 0x2


# instance fields
.field private mBTDevice:Landroid/bluetooth/BluetoothDevice;

.field private mChecked:Z

.field private mId:Ljava/lang/String;

.field private mImg:Landroid/graphics/Bitmap;

.field private mImgPath:Ljava/lang/String;

.field private mItemType:I

.field private mName:Ljava/lang/String;

.field private mThumbIconType:I

.field final synthetic this$0:Lcom/htc/dmc/DmrListActivity;


# direct methods
.method public constructor <init>(Lcom/htc/dmc/DmrListActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2306
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2283
    iput-boolean v1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mChecked:Z

    .line 2288
    iput v1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mItemType:I

    .line 2304
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mBTDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2307
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mId:Ljava/lang/String;

    .line 2308
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mName:Ljava/lang/String;

    .line 2309
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mImgPath:Ljava/lang/String;

    .line 2310
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mImg:Landroid/graphics/Bitmap;

    .line 2311
    return-void
.end method

.method public constructor <init>(Lcom/htc/dmc/DmrListActivity;I)V
    .locals 2
    .parameter
    .parameter "nItemType"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2312
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2283
    iput-boolean v1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mChecked:Z

    .line 2288
    iput v1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mItemType:I

    .line 2304
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mBTDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2313
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mId:Ljava/lang/String;

    .line 2314
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mName:Ljava/lang/String;

    .line 2315
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mImgPath:Ljava/lang/String;

    .line 2316
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mImg:Landroid/graphics/Bitmap;

    .line 2318
    iput p2, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mItemType:I

    .line 2319
    return-void
.end method

.method public constructor <init>(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter "Id"
    .parameter "Name"
    .parameter "nIconType"
    .parameter "nItemType"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2320
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2283
    iput-boolean v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mChecked:Z

    .line 2288
    iput v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mItemType:I

    .line 2304
    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mBTDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2321
    iput-object p2, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mId:Ljava/lang/String;

    .line 2322
    iput-object p3, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mName:Ljava/lang/String;

    .line 2323
    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mImgPath:Ljava/lang/String;

    .line 2324
    iput-object v1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mImg:Landroid/graphics/Bitmap;

    .line 2326
    iput p4, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mThumbIconType:I

    .line 2327
    iput p5, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mItemType:I

    .line 2328
    iput-boolean v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mChecked:Z

    .line 2329
    return-void
.end method

.method public constructor <init>(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 2
    .parameter
    .parameter "Id"
    .parameter "Name"
    .parameter "nIconType"
    .parameter "nItemType"
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2331
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2283
    iput-boolean v1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mChecked:Z

    .line 2288
    iput v1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mItemType:I

    .line 2304
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mBTDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2332
    iput-object p2, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mId:Ljava/lang/String;

    .line 2333
    iput-object p3, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mName:Ljava/lang/String;

    .line 2334
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mImgPath:Ljava/lang/String;

    .line 2335
    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mImg:Landroid/graphics/Bitmap;

    .line 2337
    iput p4, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mThumbIconType:I

    .line 2338
    iput p5, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mItemType:I

    .line 2339
    iput-boolean p6, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mChecked:Z

    .line 2340
    return-void
.end method


# virtual methods
.method public GetChecked()Z
    .locals 1

    .prologue
    .line 2380
    iget-boolean v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mChecked:Z

    return v0
.end method

.method public GetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public GetImg()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mImg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public GetImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public SetChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 2376
    iput-boolean p1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mChecked:Z

    .line 2377
    return-void
.end method

.method public SetImg(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 2361
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mImg:Landroid/graphics/Bitmap;

    .line 2362
    return-void
.end method

.method public SetImgPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 2353
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mImgPath:Ljava/lang/String;

    .line 2354
    return-void
.end method

.method public getBTDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mBTDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getIconType()I
    .locals 1

    .prologue
    .line 2384
    iget v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mThumbIconType:I

    return v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 2301
    iget v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mItemType:I

    return v0
.end method

.method public setBTDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "btdevice"

    .prologue
    .line 2344
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mBTDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2345
    return-void
.end method

.method public setItemType(I)V
    .locals 0
    .parameter "nItemType"

    .prologue
    .line 2299
    iput p1, p0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->mItemType:I

    return-void
.end method
