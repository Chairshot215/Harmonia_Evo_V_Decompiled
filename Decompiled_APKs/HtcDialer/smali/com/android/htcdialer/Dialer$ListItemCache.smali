.class final Lcom/android/htcdialer/Dialer$ListItemCache;
.super Lcom/htc/widget/HtcListItemSeparableType;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/Dialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListItemCache"
.end annotation


# instance fields
.field private actionButton:Lcom/htc/widget/HtcListItemImageButton;

.field private actionButtonType:I

.field private actionImageView:Landroid/widget/ImageView;

.field private bearerTypeView:Landroid/view/View;

.field private bitmap:Landroid/graphics/Bitmap;

.field private callTypeIconView:Landroid/widget/ImageView;

.field private contactTypeView:Landroid/widget/ImageView;

.field private dateAndTime:Lcom/htc/widget/HtcListItem2LineStamp;

.field private dateView:Landroid/widget/TextView;

.field private dialerItem:Lcom/android/htcdialer/search/DialerItem;

.field private iconType:I

.field private itemIndexer:I

.field private line1View:Landroid/widget/TextView;

.field private line2View:Landroid/widget/TextView;

.field private mbHasPhoto:Z

.field private nameAndNumber:Lcom/htc/widget/HtcListItem2LineText;

.field private numberGroupIconView:Landroid/widget/ImageView;

.field private numberIndicator:Landroid/database/CharArrayBuffer;

.field private numberType:I

.field private phoneTypeView:Landroid/widget/TextView;

.field private photo:Lcom/htc/widget/HtcListItemQuickContactBadge;

.field private photoType:I

.field private separatorView:Landroid/view/View;

.field private separatorViewTop:Landroid/view/View;

.field private spannBuilder1:Landroid/text/SpannableStringBuilder;

.field private spannBuilder2:Landroid/text/SpannableStringBuilder;

.field private timeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 5726
    invoke-direct {p0, v0, v0}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    .line 5741
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->numberType:I

    .line 5743
    iput v1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->photoType:I

    .line 5744
    iput v1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->iconType:I

    .line 5756
    iput v1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->itemIndexer:I

    .line 5772
    iput v1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->actionButtonType:I

    .line 5727
    return-void
.end method

.method static synthetic access$2700(Lcom/android/htcdialer/Dialer$ListItemCache;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5724
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->mbHasPhoto:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/htcdialer/Dialer$ListItemCache;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5724
    iput-boolean p1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->mbHasPhoto:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/htcdialer/Dialer$ListItemCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5724
    iget v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->iconType:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/htcdialer/Dialer$ListItemCache;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5724
    iput p1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->iconType:I

    return p1
.end method

.method static synthetic access$3000(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5724
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/htc/widget/HtcListItemQuickContactBadge;)Lcom/htc/widget/HtcListItemQuickContactBadge;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5724
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/htcdialer/Dialer$ListItemCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5724
    iget v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->photoType:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5724
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5724
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItem2LineText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5724
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->nameAndNumber:Lcom/htc/widget/HtcListItem2LineText;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/htc/widget/HtcListItem2LineText;)Lcom/htc/widget/HtcListItem2LineText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5724
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->nameAndNumber:Lcom/htc/widget/HtcListItem2LineText;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItem2LineStamp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5724
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->dateAndTime:Lcom/htc/widget/HtcListItem2LineStamp;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/htc/widget/HtcListItem2LineStamp;)Lcom/htc/widget/HtcListItem2LineStamp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5724
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->dateAndTime:Lcom/htc/widget/HtcListItem2LineStamp;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5724
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/htc/widget/HtcListItemImageButton;)Lcom/htc/widget/HtcListItemImageButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5724
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/android/htcdialer/search/DialerItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5724
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->dialerItem:Lcom/android/htcdialer/search/DialerItem;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/DialerItem;)Lcom/android/htcdialer/search/DialerItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5724
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->dialerItem:Lcom/android/htcdialer/search/DialerItem;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5724
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->separatorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5724
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->separatorView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5724
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->separatorViewTop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5724
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->separatorViewTop:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/android/htcdialer/Dialer$ListItemCache;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5724
    iput p1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->itemIndexer:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/htcdialer/Dialer$ListItemCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5724
    iget v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->numberType:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/htcdialer/Dialer$ListItemCache;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5724
    iput p1, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->numberType:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5724
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ListItemCache;->bearerTypeView:Landroid/view/View;

    return-object v0
.end method
