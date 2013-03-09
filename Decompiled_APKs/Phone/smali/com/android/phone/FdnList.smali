.class public Lcom/android/phone/FdnList;
.super Lcom/android/phone/ADNList;
.source "FdnList.java"


# static fields
.field private static final INTENT_EXTRA_NAME:Ljava/lang/String; = "name"

.field private static final INTENT_EXTRA_NUMBER:Ljava/lang/String; = "number"

.field private static final MENU_ADD:I = 0x2

.field private static final MENU_CALL:I = 0x1

.field private static final MENU_DELETE:I = 0x4

.field private static final MENU_EDIT:I = 0x3

.field private static final mMenuIcons:[I

.field private static final mMenuItems:[I


# instance fields
.field private mMenuDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPosition:I

.field private mSimpleAdapter:Landroid/widget/SimpleAdapter;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/FdnList;->mMenuIcons:[I

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/FdnList;->mMenuItems:[I

    return-void

    .line 63
    :array_0
    .array-data 0x4
        0x36t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x8t 0x1t
        0x3et 0x0t 0x8t 0x1t
        0x3ct 0x0t 0x8t 0x1t
    .end array-data

    .line 67
    :array_1
    .array-data 0x4
        0x4et 0x0t 0xet 0x7ft
        0x5at 0x3t 0xet 0x7ft
        0x5bt 0x3t 0xet 0x7ft
        0x5ct 0x3t 0xet 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/FdnList;->mPosition:I

    .line 81
    new-instance v0, Lcom/android/phone/FdnList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/FdnList$1;-><init>(Lcom/android/phone/FdnList;)V

    iput-object v0, p0, Lcom/android/phone/FdnList;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/FdnList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/phone/FdnList;->mPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/FdnList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/FdnList;->placeCall(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/FdnList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/FdnList;->addContact()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/FdnList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/FdnList;->editSelected(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/FdnList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/FdnList;->deleteSelected(I)V

    return-void
.end method

.method private addContact()V
    .locals 2

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method private createFdnMenuEntries()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v2, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    sget-object v0, Lcom/android/phone/FdnList;->mMenuIcons:[I

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 306
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v6, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "icon"

    sget-object v1, Lcom/android/phone/FdnList;->mMenuIcons:[I

    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v0, "item"

    sget-object v1, Lcom/android/phone/FdnList;->mMenuItems:[I

    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 312
    .end local v6           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030019

    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "icon"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "item"

    aput-object v5, v4, v1

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/phone/FdnList;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    .line 318
    return-void

    .line 312
    :array_0
    .array-data 0x4
        0xa0t 0x0t 0x8t 0x7ft
        0xa1t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method private deleteSelected()V
    .locals 5

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v1, v3, Lcom/android/phone/ADNList$FdnData;->sName:Ljava/lang/String;

    .line 268
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v2, v3, Lcom/android/phone/ADNList$FdnData;->sNumber:Ljava/lang/String;

    .line 271
    .local v2, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v0, intent:Landroid/content/Intent;
    const-class v3, Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 273
    const-string v3, "name"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v3, "number"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 277
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private deleteSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 286
    if-ltz p1, :cond_0

    .line 287
    iget-object v3, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    aget-object v3, v3, p1

    iget-object v1, v3, Lcom/android/phone/ADNList$FdnData;->sName:Ljava/lang/String;

    .line 288
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    aget-object v3, v3, p1

    iget-object v2, v3, Lcom/android/phone/ADNList$FdnData;->sNumber:Ljava/lang/String;

    .line 290
    .local v2, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 291
    .local v0, intent:Landroid/content/Intent;
    const-class v3, Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 292
    const-string v3, "name"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v3, "number"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 296
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private editSelected()V
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/FdnList;->editSelected(I)V

    .line 236
    return-void
.end method

.method private editSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 242
    if-ltz p1, :cond_0

    .line 247
    iget-object v3, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    aget-object v3, v3, p1

    iget-object v1, v3, Lcom/android/phone/ADNList$FdnData;->sName:Ljava/lang/String;

    .line 248
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    aget-object v3, v3, p1

    iget-object v2, v3, Lcom/android/phone/ADNList$FdnData;->sNumber:Ljava/lang/String;

    .line 251
    .local v2, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v0, intent:Landroid/content/Intent;
    const-class v3, Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 253
    const-string v3, "name"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v3, "number"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 257
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private placeCall(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 211
    if-ltz p1, :cond_0

    .line 212
    iget-object v3, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    aget-object v3, v3, p1

    iget-object v1, v3, Lcom/android/phone/ADNList$FdnData;->sName:Ljava/lang/String;

    .line 213
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    aget-object v3, v3, p1

    iget-object v2, v3, Lcom/android/phone/ADNList$FdnData;->sNumber:Ljava/lang/String;

    .line 214
    .local v2, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    .local v0, intentPhone:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 218
    .end local v0           #intentPhone:Landroid/content/Intent;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showFdnMenuDialog()V
    .locals 5

    .prologue
    .line 326
    iget-object v2, p0, Lcom/android/phone/FdnList;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    if-eqz v2, :cond_0

    .line 327
    new-instance v1, Lcom/android/phone/FdnList$2;

    invoke-direct {v1, p0}, Lcom/android/phone/FdnList$2;-><init>(Lcom/android/phone/FdnList;)V

    .line 339
    .local v1, viewBinder:Landroid/widget/SimpleAdapter$ViewBinder;
    iget-object v2, p0, Lcom/android/phone/FdnList;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 340
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e022a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0256

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FdnList;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    new-instance v4, Lcom/android/phone/FdnList$3;

    invoke-direct {v4, p0}, Lcom/android/phone/FdnList$3;-><init>(Lcom/android/phone/FdnList;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 357
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnList;->mMenuDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 358
    iget-object v2, p0, Lcom/android/phone/FdnList;->mMenuDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 360
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #viewBinder:Landroid/widget/SimpleAdapter$ViewBinder;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0}, Lcom/android/phone/FdnList;->createFdnMenuEntries()V

    .line 97
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FdnList;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 100
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/phone/FdnList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/FdnList;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 102
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020036

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 136
    const/4 v1, 0x2

    const v2, 0x7f0e035a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 138
    const/4 v1, 0x3

    const v2, 0x7f0e035b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 140
    const/4 v1, 0x4

    const v2, 0x7f0e035c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 142
    return v4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 368
    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v2

    .line 372
    .local v2, selectedPos:I
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 373
    iget-object v3, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v1, v3, Lcom/android/phone/ADNList$FdnData;->sNumber:Ljava/lang/String;

    .line 374
    .local v1, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 377
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0, v0}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 382
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #number:Ljava/lang/String;
    .end local v2           #selectedPos:I
    :cond_0
    const/4 v3, 0x1

    .line 385
    :goto_0
    return v3

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/ADNList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 395
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 398
    const/4 v0, 0x1

    .line 400
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/ADNList;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 190
    iput p3, p0, Lcom/android/phone/FdnList;->mPosition:I

    .line 191
    invoke-direct {p0}, Lcom/android/phone/FdnList;->showFdnMenuDialog()V

    .line 193
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 182
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 162
    :pswitch_0
    const-string v1, "ANALYTIC_Phone"

    const-string v2, "[FdnList]Call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :pswitch_1
    const-string v1, "ANALYTIC_Phone"

    const-string v2, "[FdnList]Add contact"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/android/phone/FdnList;->addContact()V

    goto :goto_0

    .line 172
    :pswitch_2
    const-string v1, "ANALYTIC_Phone"

    const-string v2, "[FdnList]Edit"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/android/phone/FdnList;->editSelected()V

    goto :goto_0

    .line 177
    :pswitch_3
    const-string v1, "ANALYTIC_Phone"

    const-string v2, "[FdnList]Delete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0}, Lcom/android/phone/FdnList;->deleteSelected()V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/phone/ADNList;->onPause()V

    .line 115
    iget-object v0, p0, Lcom/android/phone/FdnList;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/FdnList;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 117
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 147
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_0

    move v0, v1

    .line 150
    .local v0, hasSelection:Z
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 152
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 153
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 155
    return v1

    .end local v0           #hasSelection:Z
    :cond_0
    move v0, v2

    .line 148
    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/phone/ADNList;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/android/phone/FdnList;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/FdnList;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 110
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/phone/FdnList;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDetailIccStatus()[I

    move-result-object v1

    const/4 v2, 0x2

    aget v0, v1, v2

    .line 204
    .local v0, pin2:I
    if-gtz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->finish()V

    .line 208
    .end local v0           #pin2:I
    :cond_0
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://icc/fdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 124
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
