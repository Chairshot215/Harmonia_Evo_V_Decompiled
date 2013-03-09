.class public Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
.super Landroid/widget/LinearLayout;
.source "PhoneNameEditableHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$NameTextWatcher;,
        Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$CheckThread;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final FOOTER_SIZE_BYTES:I = 0xe

.field private static final TAG:Ljava/lang/String; = "PhoneNameEditableHeaderView"

.field private static mIsNameTextLengthLimited:Z

.field private static mMaxAlphaTagLength:I


# instance fields
.field private isCheckingThreadRunning:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDefaultFilters:[Landroid/text/InputFilter;

.field private mEditDetailNameButton:Lcom/htc/widget/HeaderBarImage;

.field private mFamilyName:Ljava/lang/String;

.field private mGivenName:Ljava/lang/String;

.field private final mHandleADNAlphaTadLimit:Ljava/lang/Runnable;

.field private mHasSetPhoto:Z

.field private mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInputBox:Lcom/htc/widget/HeaderBarInput;

.field private mNameTextWatcher:Landroid/text/TextWatcher;

.field private mNameView:Landroid/widget/EditText;

.field private mNewDisplayName:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field private mOldDisplayName:Ljava/lang/String;

.field private mOriginalListener:Landroid/view/View$OnClickListener;

.field private mPhotoButton:Lcom/htc/widget/HeaderBarImage;

.field protected mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

.field private mSource:Lcom/android/htccontacts/model/AccountType;

.field private mState:Lcom/android/htccontacts/model/EntityDelta;

.field protected mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->DEBUG:Z

    .line 105
    const/4 v0, -0x1

    sput v0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mMaxAlphaTagLength:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHasSetPhoto:Z

    .line 755
    new-instance v0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$1;-><init>(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHandleADNAlphaTadLimit:Ljava/lang/Runnable;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHasSetPhoto:Z

    .line 755
    new-instance v0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$1;-><init>(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHandleADNAlphaTadLimit:Ljava/lang/Runnable;

    .line 124
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mIsNameTextLengthLimited:Z

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mMaxAlphaTagLength:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    sput p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mMaxAlphaTagLength:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->limitNameTextLength(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->unLimitNameTextLength()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHandleADNAlphaTadLimit:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isCheckingThreadRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->onNameChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setNewDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method private buildData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 232
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v1, :cond_0

    .line 233
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 234
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v1, :cond_1

    .line 240
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 241
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 248
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-eqz v1, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->updateNameUI()V

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-eqz v1, :cond_3

    .line 256
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->loadPhotoEntry()V

    .line 260
    :cond_3
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDelta;->isReadyOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 261
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 262
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 264
    :cond_4
    return-void

    .line 244
    :cond_5
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->resetDefault()V

    goto :goto_0
.end method

.method private doCheckingSIMADNNameLimit()V
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isCheckingThreadRunning:Z

    if-eqz v0, :cond_0

    .line 793
    :goto_0
    return-void

    .line 791
    :cond_0
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getSIMMaxAlphaTagLength()I

    move-result v0

    sput v0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mMaxAlphaTagLength:I

    .line 792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isCheckingThreadRunning:Z

    goto :goto_0
.end method

.method private limitNameTextLength(I)V
    .locals 4
    .parameter "length"

    .prologue
    .line 767
    if-gtz p1, :cond_0

    .line 778
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 771
    .local v1, editable:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 772
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 773
    .local v2, len:I
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, data:Ljava/lang/String;
    if-le v2, p1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 775
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 777
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #len:I
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-static {v3, p1}, Lcom/android/htccontacts/util/ContactsUtils;->restrainTextViewLength(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method private loadPhotoEntry()V
    .locals 5

    .prologue
    .line 332
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data15"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 333
    .local v1, photoBytes:[B
    if-eqz v1, :cond_2

    .line 334
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 335
    .local v0, photo:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 336
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-direct {p0, v2, v0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setRoundCornerBitmapToPhotoButton(Lcom/htc/widget/HeaderBarImage;Landroid/graphics/Bitmap;)V

    .line 337
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHasSetPhoto:Z

    .line 338
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 341
    :cond_0
    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    .line 351
    .end local v0           #photo:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 344
    .restart local v0       #photo:Landroid/graphics/Bitmap;
    :cond_1
    const-string v2, "PhoneNameEditableHeaderView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot decode photo data, phot data size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->resetDefault()V

    goto :goto_0

    .line 348
    .end local v0           #photo:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->resetDefault()V

    goto :goto_0
.end method

.method private onNameChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "givename"
    .parameter "familyname"
    .parameter "displayname"

    .prologue
    .line 360
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v2, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    if-eqz p1, :cond_4

    .line 365
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mGivenName:Ljava/lang/String;

    .line 366
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data2"

    invoke-virtual {v2, v3, p1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 378
    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mFamilyName:Ljava/lang/String;

    .line 379
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data3"

    invoke-virtual {v2, v3, p2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_3
    const-string v2, "com.anddroid.contacts.sim"

    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mSource:Lcom/android/htccontacts/model/AccountType;

    iget-object v3, v3, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 383
    if-eqz p3, :cond_5

    .line 384
    iput-object p3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mGivenName:Ljava/lang/String;

    .line 385
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data2"

    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mGivenName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data3"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data1"

    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mGivenName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_4
    if-eqz p3, :cond_2

    .line 368
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data2"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, local:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, localfamily:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 373
    iput-object p3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mGivenName:Ljava/lang/String;

    .line 374
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data2"

    invoke-virtual {v2, v3, p3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 392
    .end local v0           #local:Ljava/lang/String;
    .end local v1           #localfamily:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mFamilyName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 393
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data2"

    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mGivenName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_6
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mGivenName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data3"

    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onYomiganaNameChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "yomigana_givenname"
    .parameter "yomigana_familyname"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v0, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    if-eqz p1, :cond_2

    .line 500
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "data7"

    invoke-virtual {v0, v1, p1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_2
    if-eqz p2, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "data9"

    invoke-virtual {v0, v1, p2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rebuildData()V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->buildData()V

    .line 585
    return-void
.end method

.method private refixSIMName()V
    .locals 5

    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isSimSource()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, displayname:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    sget v2, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mMaxAlphaTagLength:I

    invoke-static {v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->trimSIMCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 323
    .local v0, charSeq:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 324
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data1"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setNewDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "mNewDisplayName"

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNewDisplayName:Ljava/lang/String;

    .line 870
    return-void
.end method

.method private final setRoundCornerBitmapToPhotoButton(Lcom/htc/widget/HeaderBarImage;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "imageView"
    .parameter "bmSrc"

    .prologue
    .line 739
    invoke-static {p2}, Lcom/android/htccontacts/util/ContactsUtils;->getCenterCropThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 742
    .local v0, bmCenterCropThumbnail:Landroid/graphics/Bitmap;
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 743
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 744
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->enableLeftDivider(Z)V

    .line 745
    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 752
    return-void
.end method

.method private unLimitNameTextLength()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->unRestrainTextViewLength(Landroid/widget/TextView;)V

    .line 781
    return-void
.end method


# virtual methods
.method public changeNameEditAttribute(Lcom/android/htccontacts/model/ContactsSource;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 831
    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsUtils;->isMultipleEditableNameSource(Lcom/android/htccontacts/model/ContactsSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->enableExchangeNameEditor()V

    .line 836
    :goto_0
    return-void

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->disableExchangeNameEditor()V

    goto :goto_0
.end method

.method public clearUI()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public disableExchangeNameEditor()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    instance-of v0, v0, Lcom/htc/widget/ButtonStyleEditText;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    check-cast v0, Lcom/htc/widget/ButtonStyleEditText;

    invoke-virtual {v0}, Lcom/htc/widget/ButtonStyleEditText;->enableEditType()V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 719
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    const/16 v1, 0x20b1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 721
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 724
    return-void
.end method

.method public enableExchangeNameEditor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 693
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 695
    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mGivenName:Ljava/lang/String;

    .line 696
    const-string v1, ""

    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mFamilyName:Ljava/lang/String;

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    instance-of v1, v1, Lcom/htc/widget/ButtonStyleEditText;

    if-eqz v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    check-cast v1, Lcom/htc/widget/ButtonStyleEditText;

    invoke-virtual {v1}, Lcom/htc/widget/ButtonStyleEditText;->enableButtonType()V

    .line 702
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 703
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-static {}, Lcom/android/htccontacts/ui/widget/HtcDisableTextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 704
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 705
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mOriginalListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    .line 706
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mOriginalListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    :cond_2
    return-void
.end method

.method public enableNameEditor(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 728
    return-void
.end method

.method public getNameDataContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v1, :cond_0

    .line 478
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 491
    :goto_0
    return-object v0

    .line 480
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 481
    .local v0, names:Landroid/content/ContentValues;
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v1, "data4"

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data4"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v1, "data6"

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data6"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v1, "data2"

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data2"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v1, "data5"

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data5"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v1, "data3"

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v1, "data7"

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data7"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v1, "data8"

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data8"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v1, "data9"

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data9"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNameDataIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 412
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v5, :cond_1

    .line 413
    const/4 v2, 0x0

    .line 436
    :cond_0
    :goto_0
    return-object v2

    .line 415
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 416
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v6, "data2"

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, given:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v6, "data3"

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, family:Ljava/lang/String;
    const-string v5, "data2"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v5, "data3"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    sget-boolean v5, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v5, :cond_0

    .line 428
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v6, "data7"

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, phoneticGivenName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v6, "data9"

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, phoneticFamilyName:Ljava/lang/String;
    const-string v5, "data7"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v5, "data9"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getNewDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNewDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public hasPhotoEditor()Z
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x1

    return v0
.end method

.method public hasSetPhoto()Z
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHasSetPhoto:Z

    return v0
.end method

.method public isDispalyNameChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 873
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNewDisplayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mOldDisplayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNewDisplayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mOldDisplayName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSimSource()Z
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mSource:Lcom/android/htccontacts/model/AccountType;

    if-eqz v0, :cond_0

    const-string v0, "com.anddroid.contacts.sim"

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mSource:Lcom/android/htccontacts/model/AccountType;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 635
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 636
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 639
    :cond_0
    iput-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    .line 641
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    :cond_2
    iput-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mOriginalListener:Landroid/view/View$OnClickListener;

    .line 650
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_3

    .line 651
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 652
    iput-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameTextWatcher:Landroid/text/TextWatcher;

    .line 654
    :cond_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 129
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mInflater:Landroid/view/LayoutInflater;

    .line 132
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "phone_name_editor_header"

    const-string v8, "layout"

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 134
    .local v2, layoutResId:I
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v2, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 136
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setDrawingCacheEnabled(Z)V

    .line 137
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "headerBarMiddle"

    const-string v8, "id"

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 140
    .local v1, headerBarMiddleId:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "headerImgLeft"

    const-string v8, "id"

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 141
    .local v5, photoButtonResId:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "headerInput"

    const-string v8, "id"

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 142
    .local v4, nameViewRedId:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "headerImgRight"

    const-string v8, "id"

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, editDetailNameButtonResId:I
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HeaderBarMiddle;

    iput-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    .line 145
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HeaderBarImage;

    iput-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    .line 146
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HeaderBarInput;

    iput-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mInputBox:Lcom/htc/widget/HeaderBarInput;

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HeaderBarImage;

    iput-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mEditDetailNameButton:Lcom/htc/widget/HeaderBarImage;

    .line 149
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v6, v10}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 150
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v6, v10}, Lcom/htc/widget/HeaderBarMiddle;->enableLeftDivider(Z)V

    .line 151
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 152
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mInputBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v6, v10}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 153
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mEditDetailNameButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v6, v10}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 155
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mInputBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v6}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    .line 156
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    const v7, 0x7f0a00d2

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "common_icon_glance_edit_on"

    const-string v8, "drawable"

    const-string v9, "com.htc"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 159
    .local v3, moreResId:I
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mEditDetailNameButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v6, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 160
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mEditDetailNameButton:Lcom/htc/widget/HeaderBarImage;

    const v7, 0x7f0a0238

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 162
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mDefaultFilters:[Landroid/text/InputFilter;

    .line 164
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 604
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 606
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 607
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarImage;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 608
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public rebuildFromState()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->clearUI()V

    .line 223
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->buildData()V

    .line 224
    return-void
.end method

.method public requestFocusNameEditor()Z
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    move-result v0

    return v0
.end method

.method protected resetDefault()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 592
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 593
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->enableLeftDivider(Z)V

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHasSetPhoto:Z

    .line 595
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 598
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    .line 599
    return-void
.end method

.method public resetDisplayName()V
    .locals 6

    .prologue
    .line 658
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v4, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data2"

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, given:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data3"

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, family:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 666
    .local v3, locale:Ljava/util/Locale;
    const/4 v2, 0x1

    .line 667
    .local v2, isFL:Z
    invoke-static {v3}, Lcom/android/htccontacts/util/ContactsUtils;->isFamilyNamePersonaltNameOrder(Ljava/util/Locale;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 668
    const/4 v2, 0x0

    .line 672
    :cond_2
    if-eqz v1, :cond_3

    .line 673
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data2"

    invoke-virtual {v4, v5, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_3
    if-eqz v0, :cond_0

    .line 676
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data3"

    invoke-virtual {v4, v5, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setButtonNameClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mOriginalListener:Landroid/view/View$OnClickListener;

    .line 684
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mEditDetailNameButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    return-void
.end method

.method public setDisplayOnlyPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "photo"

    .prologue
    .line 559
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 560
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 562
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v4, Lcom/android/htccontacts/util/Constants;->COMPESS_QUALITY:I

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 563
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 564
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 565
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-direct {p0, v3, p1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setRoundCornerBitmapToPhotoButton(Lcom/htc/widget/HeaderBarImage;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, e:Ljava/io/IOException;
    const-string v3, "PhoneNameEditableHeaderView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to serialize photo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNameBySelf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "givename"
    .parameter "familyname"
    .parameter "displayname"

    .prologue
    .line 402
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->onNameChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public setNameClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    return-void
.end method

.method public setNameDataByContentValues(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "newNames"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "data1"

    const-string v2, "data1"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "data4"

    const-string v2, "data4"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "data6"

    const-string v2, "data6"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "data2"

    const-string v2, "data2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "data5"

    const-string v2, "data5"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "data3"

    const-string v2, "data3"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "data7"

    const-string v2, "data7"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "data8"

    const-string v2, "data8"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "data9"

    const-string v2, "data9"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNameDataByIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 440
    const-string v4, "data2"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, given:Ljava/lang/String;
    const-string v4, "data3"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, family:Ljava/lang/String;
    sget-boolean v4, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    if-eqz v4, :cond_0

    .line 452
    const-string v4, "data7"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, yomigana_givenname:Ljava/lang/String;
    const-string v4, "data9"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, yomigana_familyname:Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->onYomiganaNameChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .end local v2           #yomigana_familyname:Ljava/lang/String;
    .end local v3           #yomigana_givenname:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setNameEditorFocusabe(Z)V
    .locals 1
    .parameter "focusable"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 732
    return-void
.end method

.method public setNameFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 690
    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .locals 1
    .parameter "displayName"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 883
    :cond_0
    return-void
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "photo"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 507
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v4, :cond_0

    .line 538
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 512
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data15"

    check-cast v3, [B

    invoke-virtual {v4, v5, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 513
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data7"

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    .line 514
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->resetDefault()V

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 519
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 522
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v4, Lcom/android/htccontacts/util/Constants;->COMPESS_QUALITY_50:I

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 523
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 524
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 525
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data15"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 526
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data7"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    .line 527
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data9"

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-direct {p0, v3, p1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setRoundCornerBitmapToPhotoButton(Lcom/htc/widget/HeaderBarImage;Landroid/graphics/Bitmap;)V

    .line 530
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHasSetPhoto:Z

    .line 531
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 532
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 534
    :cond_2
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, e:Ljava/io/IOException;
    const-string v3, "PhoneNameEditableHeaderView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to serialize photo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setPhotoBitmapType(J[BLjava/lang/String;)V
    .locals 2
    .parameter "lType"
    .parameter "dataOverlay"
    .parameter "sFacebookPHotoUrl"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v0, :cond_0

    .line 580
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "data7"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    .line 576
    const-wide/16 v0, 0x1

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "overlay_icon"

    invoke-virtual {v0, v1, p3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v1, "data9"

    invoke-virtual {v0, v1, p4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPhotoClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    return-void
.end method

.method public setSimTypeHeader(Z)V
    .locals 3
    .parameter "simType"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 541
    if-eqz p1, :cond_2

    .line 542
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mEditDetailNameButton:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mEditDetailNameButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 557
    :cond_1
    :goto_0
    return-void

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_3

    .line 551
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mEditDetailNameButton:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mEditDetailNameButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setState(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;)V
    .locals 6
    .parameter "state"
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    .line 168
    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mSource:Lcom/android/htccontacts/model/AccountType;

    .line 170
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 171
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 173
    const-string v1, "vnd.android.cursor.item/name"

    invoke-static {p1, p2, v1}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 174
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-static {p1, p2, v1}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->rebuildFromState()V

    .line 176
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->updateEditorsVisible()V

    .line 178
    sput-boolean v3, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mIsNameTextLengthLimited:Z

    .line 180
    iget-object v1, p2, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "com.anddroid.contacts.sim"

    iget-object v4, p2, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mIsNameTextLengthLimited:Z

    .line 185
    sget-boolean v1, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mIsNameTextLengthLimited:Z

    if-eqz v1, :cond_4

    sget v1, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mMaxAlphaTagLength:I

    if-eq v1, v5, :cond_4

    .line 186
    sget v1, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mMaxAlphaTagLength:I

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->limitNameTextLength(I)V

    .line 192
    :cond_0
    :goto_1
    sget v1, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mMaxAlphaTagLength:I

    if-ne v1, v5, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->doCheckingSIMADNNameLimit()V

    .line 197
    :cond_1
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {p2, v1}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 198
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    if-nez v0, :cond_5

    .line 199
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setFocusable(Z)V

    .line 208
    :goto_2
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameTextWatcher:Landroid/text/TextWatcher;

    if-nez v1, :cond_2

    .line 209
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->refixSIMName()V

    .line 210
    new-instance v1, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$NameTextWatcher;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$NameTextWatcher;-><init>(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;)V

    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameTextWatcher:Landroid/text/TextWatcher;

    .line 211
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 213
    :cond_2
    return-void

    .end local v0           #kind:Lcom/android/htccontacts/model/DataKind;
    :cond_3
    move v1, v3

    .line 180
    goto :goto_0

    .line 187
    :cond_4
    sget-boolean v1, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mIsNameTextLengthLimited:Z

    if-nez v1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->unLimitNameTextLength()V

    goto :goto_1

    .line 203
    .restart local v0       #kind:Lcom/android/htccontacts/model/DataKind;
    :cond_5
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setFocusable(Z)V

    goto :goto_2
.end method

.method protected updateEditorsVisible()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setVisibility(I)V

    .line 355
    return-void
.end method

.method public updateNameUI()V
    .locals 4

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mStructuredNameEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getNameDataContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 308
    .local v1, names:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/htccontacts/util/NameUtility;->joinNames(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 309
    .local v0, joinNames:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 310
    const-string v2, "data1"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mOldDisplayName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNewDisplayName:Ljava/lang/String;

    .line 311
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mNameView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mOldDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
