.class public Lcom/htc/htcmailwidgets/LocalData;
.super Ljava/lang/Object;
.source "LocalData.java"


# static fields
.field public static mAccountHasBeenDeleted:Ljava/lang/String;

.field public static mAccountNameLength:I

.field public static mAccountNotExistText:Ljava/lang/String;

.field public static mAccountNotExistTitle:Ljava/lang/String;

.field public static mButtonCancel:Ljava/lang/String;

.field public static mButtonOk:Ljava/lang/String;

.field public static mDefaultLabel:Ljava/lang/String;

.field public static mDeleteNail:Ljava/lang/String;

.field public static mEmptyMessage:Ljava/lang/String;

.field public static mLoadingString:Ljava/lang/String;

.field public static mNoAccountAlert:Ljava/lang/String;

.field public static mNoSubject:Ljava/lang/String;

.field public static mUnreadHeight:I

.field public static mUnreadWidth:I

.field public static mUpdateUIbyItems:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 11
    sput v1, Lcom/htc/htcmailwidgets/LocalData;->mUpdateUIbyItems:I

    .line 12
    sput v1, Lcom/htc/htcmailwidgets/LocalData;->mUnreadWidth:I

    .line 13
    sput v1, Lcom/htc/htcmailwidgets/LocalData;->mUnreadHeight:I

    .line 14
    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mNoSubject:Ljava/lang/String;

    .line 17
    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mAccountNotExistTitle:Ljava/lang/String;

    .line 18
    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mAccountNotExistText:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mButtonCancel:Ljava/lang/String;

    .line 20
    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mButtonOk:Ljava/lang/String;

    .line 23
    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mDefaultLabel:Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mNoAccountAlert:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mAccountHasBeenDeleted:Ljava/lang/String;

    .line 26
    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mEmptyMessage:Ljava/lang/String;

    .line 27
    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mLoadingString:Ljava/lang/String;

    .line 30
    sput v1, Lcom/htc/htcmailwidgets/LocalData;->mAccountNameLength:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public load()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/htc/htcmailwidgets/LocalData;->mUpdateUIbyItems:I

    .line 41
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/htc/htcmailwidgets/LocalData;->mUnreadWidth:I

    .line 42
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/htc/htcmailwidgets/LocalData;->mUnreadHeight:I

    .line 43
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mNoSubject:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mAccountNotExistTitle:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mAccountNotExistText:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mButtonCancel:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mButtonOk:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mDefaultLabel:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mNoAccountAlert:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mAccountHasBeenDeleted:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mEmptyMessage:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mLoadingString:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/htc/htcmailwidgets/LocalData;->mAccountNameLength:I

    .line 60
    iget-object v0, p0, Lcom/htc/htcmailwidgets/LocalData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/LocalData;->mDeleteNail:Ljava/lang/String;

    .line 62
    return-void
.end method
