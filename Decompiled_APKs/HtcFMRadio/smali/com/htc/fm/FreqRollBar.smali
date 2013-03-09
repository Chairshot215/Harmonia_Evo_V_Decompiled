.class public Lcom/htc/fm/FreqRollBar;
.super Landroid/widget/LinearLayout;
.source "FreqRollBar.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/htc/fm/RollBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/FreqRollBar$RotateThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadio_FreqRollBar"


# instance fields
.field private final SETFREQUENCY:I

.field private final SETSEEKFREQUENCY:I

.field private containershandler:Landroid/os/Handler;

.field private dfdepthZ:F

.field private dfoffsetY:F

.field dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

.field dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

.field dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

.field dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

.field private fddepthZ:F

.field private fdoffsetY:F

.field fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

.field fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

.field fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

.field fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

.field private fudepthZ:F

.field private fuoffsetY:F

.field furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

.field furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

.field furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

.field furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

.field private handleranimation:Z

.field private handlerfreq:I

.field private mActionHandler:Landroid/os/Handler;

.field private mImageIds:[Ljava/lang/Integer;

.field private mImageIds2:[Ljava/lang/Integer;

.field private mImageIds3:[Ljava/lang/Integer;

.field private mImageIds4:[Ljava/lang/Integer;

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private mSwitcher2:Landroid/widget/ImageSwitcher;

.field private mSwitcher3:Landroid/widget/ImageSwitcher;

.field private mSwitcher4:Landroid/widget/ImageSwitcher;

.field private mcontext:Landroid/content/Context;

.field mforwordcurrentindex:I

.field mforwordcurrentindex2:I

.field mforwordcurrentindex3:I

.field mforwordcurrentindex4:I

.field mfreq:I

.field private mirrorface:Lcom/htc/fm/MirrorFace;

.field private rotatetime:I

.field private rotatetime2:I

.field private rotatetime3:I

.field private rotatetime4:I

.field private ufdepthZ:F

.field private ufoffsetY:F

.field ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

.field ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

.field ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

.field ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 592
    iput v4, p0, Lcom/htc/fm/FreqRollBar;->SETFREQUENCY:I

    .line 593
    iput v5, p0, Lcom/htc/fm/FreqRollBar;->SETSEEKFREQUENCY:I

    .line 594
    iput v3, p0, Lcom/htc/fm/FreqRollBar;->handlerfreq:I

    .line 595
    iput-boolean v3, p0, Lcom/htc/fm/FreqRollBar;->handleranimation:Z

    .line 596
    new-instance v0, Lcom/htc/fm/FreqRollBar$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/FreqRollBar$1;-><init>(Lcom/htc/fm/FreqRollBar;)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mActionHandler:Landroid/os/Handler;

    .line 757
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02007e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020064

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f02006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mImageIds:[Ljava/lang/Integer;

    .line 761
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02007e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020064

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f02006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mImageIds2:[Ljava/lang/Integer;

    .line 765
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02007e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020064

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f02006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mImageIds3:[Ljava/lang/Integer;

    .line 769
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f020014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020064

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f02006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mImageIds4:[Ljava/lang/Integer;

    .line 61
    iput-object p1, p0, Lcom/htc/fm/FreqRollBar;->mcontext:Landroid/content/Context;

    .line 62
    const-string v0, "FMRadio_FreqRollBar"

    const-string v1, "[FreqRollBar] constructor "

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attributeset"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 592
    iput v4, p0, Lcom/htc/fm/FreqRollBar;->SETFREQUENCY:I

    .line 593
    iput v5, p0, Lcom/htc/fm/FreqRollBar;->SETSEEKFREQUENCY:I

    .line 594
    iput v3, p0, Lcom/htc/fm/FreqRollBar;->handlerfreq:I

    .line 595
    iput-boolean v3, p0, Lcom/htc/fm/FreqRollBar;->handleranimation:Z

    .line 596
    new-instance v0, Lcom/htc/fm/FreqRollBar$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/FreqRollBar$1;-><init>(Lcom/htc/fm/FreqRollBar;)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mActionHandler:Landroid/os/Handler;

    .line 757
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02007e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020064

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f02006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mImageIds:[Ljava/lang/Integer;

    .line 761
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02007e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020064

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f02006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mImageIds2:[Ljava/lang/Integer;

    .line 765
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02007e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020064

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f02006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mImageIds3:[Ljava/lang/Integer;

    .line 769
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f020014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020064

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f02006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mImageIds4:[Ljava/lang/Integer;

    .line 68
    iput-object p1, p0, Lcom/htc/fm/FreqRollBar;->mcontext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/htc/fm/FreqRollBar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fm/FreqRollBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/htc/fm/FreqRollBar;->handlerfreq:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/fm/FreqRollBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/htc/fm/FreqRollBar;->handleranimation:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/fm/FreqRollBar;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/htc/fm/FreqRollBar;->setFreqInternal(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/fm/FreqRollBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/htc/fm/FreqRollBar;->setFreqbySeekInternal(I)V

    return-void
.end method

.method private setFreqInternal(IZ)V
    .locals 24
    .parameter "freq"
    .parameter "useAnimation"

    .prologue
    .line 629
    const-string v20, "FMRadio_FreqRollBar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[setFreq]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fm/FreqRollBar;->mfreq:I

    .line 633
    .local v13, originalfreq:I
    move/from16 v0, p1

    if-eq v13, v0, :cond_1

    .line 635
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fm/FreqRollBar;->mfreq:I

    .line 637
    move/from16 v0, p1

    if-ge v13, v0, :cond_0

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 670
    :goto_0
    move/from16 v0, p1

    div-int/lit16 v14, v0, 0x3e8

    .line 671
    .local v14, p1:I
    move/from16 v0, p1

    rem-int/lit16 v15, v0, 0x3e8

    .line 672
    .local v15, r:I
    rem-int/lit8 v20, v15, 0x64

    const/16 v21, 0x32

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 673
    div-int/lit8 v20, v15, 0x64

    add-int/lit8 v5, v20, 0x1

    .line 678
    .local v5, forwordcurrentindex:I
    :goto_1
    rem-int/lit8 v6, v14, 0xa

    .line 679
    .local v6, forwordcurrentindex2:I
    div-int/lit8 v20, v14, 0xa

    rem-int/lit8 v7, v20, 0xa

    .line 680
    .local v7, forwordcurrentindex3:I
    div-int/lit8 v8, v14, 0x64

    .line 682
    .local v8, forwordcurrentindex4:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1f

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 685
    .local v9, msg:Landroid/os/Message;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 687
    .local v3, TimeStampOfUiStartingAdjust:J
    new-instance v16, Lcom/htc/fm/RotateSeed;

    invoke-direct/range {v16 .. v16}, Lcom/htc/fm/RotateSeed;-><init>()V

    .line 688
    .local v16, seed:Lcom/htc/fm/RotateSeed;
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/RotateSeed;->Switcher:I

    .line 689
    move-object/from16 v0, v16

    iput v5, v0, Lcom/htc/fm/RotateSeed;->number:I

    .line 690
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fm/FreqRollBar;->rotatetime:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 691
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    .line 693
    move-object/from16 v0, v16

    iput-wide v3, v0, Lcom/htc/fm/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 695
    move-object/from16 v0, v16

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 697
    const-string v20, "FMRadio_FreqRollBar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[setFreq]TimeStampOfUIStartingAdjust:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/fm/RotateSeed;->TimeStampOfUIStartingAdjust:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1f

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 704
    .local v10, msg2:Landroid/os/Message;
    new-instance v17, Lcom/htc/fm/RotateSeed;

    invoke-direct/range {v17 .. v17}, Lcom/htc/fm/RotateSeed;-><init>()V

    .line 705
    .local v17, seed2:Lcom/htc/fm/RotateSeed;
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/fm/RotateSeed;->Switcher:I

    .line 706
    move-object/from16 v0, v17

    iput v6, v0, Lcom/htc/fm/RotateSeed;->number:I

    .line 707
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fm/FreqRollBar;->rotatetime2:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 708
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    .line 709
    move-object/from16 v0, v17

    iput-wide v3, v0, Lcom/htc/fm/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 710
    move-object/from16 v0, v17

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 712
    if-eqz p2, :cond_3

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x50

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 717
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1f

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 720
    .local v11, msg3:Landroid/os/Message;
    new-instance v18, Lcom/htc/fm/RotateSeed;

    invoke-direct/range {v18 .. v18}, Lcom/htc/fm/RotateSeed;-><init>()V

    .line 721
    .local v18, seed3:Lcom/htc/fm/RotateSeed;
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/fm/RotateSeed;->Switcher:I

    .line 722
    move-object/from16 v0, v18

    iput v7, v0, Lcom/htc/fm/RotateSeed;->number:I

    .line 723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fm/FreqRollBar;->rotatetime3:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 724
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    .line 725
    move-object/from16 v0, v18

    iput-wide v3, v0, Lcom/htc/fm/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 726
    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 728
    if-eqz p2, :cond_4

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0xa0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 733
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1f

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 736
    .local v12, msg4:Landroid/os/Message;
    new-instance v19, Lcom/htc/fm/RotateSeed;

    invoke-direct/range {v19 .. v19}, Lcom/htc/fm/RotateSeed;-><init>()V

    .line 737
    .local v19, seed4:Lcom/htc/fm/RotateSeed;
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/fm/RotateSeed;->Switcher:I

    .line 738
    move-object/from16 v0, v19

    iput v8, v0, Lcom/htc/fm/RotateSeed;->number:I

    .line 739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fm/FreqRollBar;->rotatetime4:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    .line 740
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    .line 741
    move-object/from16 v0, v19

    iput-wide v3, v0, Lcom/htc/fm/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 742
    move-object/from16 v0, v19

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 746
    if-eqz p2, :cond_5

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0xd2

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 750
    .end local v3           #TimeStampOfUiStartingAdjust:J
    .end local v5           #forwordcurrentindex:I
    .end local v6           #forwordcurrentindex2:I
    .end local v7           #forwordcurrentindex3:I
    .end local v8           #forwordcurrentindex4:I
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #msg2:Landroid/os/Message;
    .end local v11           #msg3:Landroid/os/Message;
    .end local v12           #msg4:Landroid/os/Message;
    .end local v14           #p1:I
    .end local v15           #r:I
    .end local v16           #seed:Lcom/htc/fm/RotateSeed;
    .end local v17           #seed2:Lcom/htc/fm/RotateSeed;
    .end local v18           #seed3:Lcom/htc/fm/RotateSeed;
    .end local v19           #seed4:Lcom/htc/fm/RotateSeed;
    :goto_4
    return-void

    .line 652
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 666
    :cond_1
    const-string v20, "FMRadio_FreqRollBar"

    const-string v21, "[FMRadio][RollBar] Don\'t have to update"

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 675
    .restart local v14       #p1:I
    .restart local v15       #r:I
    :cond_2
    div-int/lit8 v5, v15, 0x64

    .restart local v5       #forwordcurrentindex:I
    goto/16 :goto_1

    .line 715
    .restart local v3       #TimeStampOfUiStartingAdjust:J
    .restart local v6       #forwordcurrentindex2:I
    .restart local v7       #forwordcurrentindex3:I
    .restart local v8       #forwordcurrentindex4:I
    .restart local v9       #msg:Landroid/os/Message;
    .restart local v10       #msg2:Landroid/os/Message;
    .restart local v16       #seed:Lcom/htc/fm/RotateSeed;
    .restart local v17       #seed2:Lcom/htc/fm/RotateSeed;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 731
    .restart local v11       #msg3:Landroid/os/Message;
    .restart local v18       #seed3:Lcom/htc/fm/RotateSeed;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    .line 749
    .restart local v12       #msg4:Landroid/os/Message;
    .restart local v19       #seed4:Lcom/htc/fm/RotateSeed;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4
.end method

.method private setFreqbySeekInternal(I)V
    .locals 23
    .parameter "freq"

    .prologue
    .line 468
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fm/FreqRollBar;->mfreq:I

    .line 469
    .local v13, originalfreq:I
    const-string v20, "FMRadio_FreqRollBar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[setFreqbySeek] :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    move/from16 v0, p1

    if-eq v13, v0, :cond_6

    .line 472
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fm/FreqRollBar;->mfreq:I

    .line 474
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 502
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mirrorface:Lcom/htc/fm/MirrorFace;

    move-object/from16 v21, v0

    move/from16 v0, p1

    if-ge v13, v0, :cond_5

    const/16 v20, 0x1

    :goto_1
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/fm/MirrorFace;->setRotateDirection(Z)V

    .line 510
    move/from16 v0, p1

    div-int/lit16 v14, v0, 0x3e8

    .line 511
    .local v14, p1:I
    move/from16 v0, p1

    rem-int/lit16 v15, v0, 0x3e8

    .line 512
    .local v15, r:I
    rem-int/lit8 v20, v15, 0x64

    const/16 v21, 0x32

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    .line 513
    div-int/lit8 v20, v15, 0x64

    add-int/lit8 v5, v20, 0x1

    .line 518
    .local v5, forwordcurrentindex:I
    :goto_2
    rem-int/lit8 v6, v14, 0xa

    .line 519
    .local v6, forwordcurrentindex2:I
    div-int/lit8 v20, v14, 0xa

    rem-int/lit8 v7, v20, 0xa

    .line 520
    .local v7, forwordcurrentindex3:I
    div-int/lit8 v8, v14, 0x64

    .line 523
    .local v8, forwordcurrentindex4:I
    div-int/lit16 v14, v13, 0x3e8

    .line 524
    rem-int/lit16 v15, v13, 0x3e8

    .line 525
    rem-int/lit8 v20, v15, 0x64

    const/16 v21, 0x32

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 526
    div-int/lit8 v20, v15, 0x64

    add-int/lit8 v9, v20, 0x1

    .line 531
    .local v9, nowcurrentindex:I
    :goto_3
    rem-int/lit8 v10, v14, 0xa

    .line 532
    .local v10, nowcurrentindex2:I
    div-int/lit8 v20, v14, 0xa

    rem-int/lit8 v11, v20, 0xa

    .line 533
    .local v11, nowcurrentindex3:I
    div-int/lit8 v12, v14, 0x64

    .line 536
    .local v12, nowcurrentindex4:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 537
    .local v3, TimeStampOfUIStartingAdjust:J
    const-string v20, "FMRadio_FreqRollBar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[setFreqbySeek]TimeStampOfUIStartingAdjust:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    if-eq v9, v5, :cond_0

    .line 541
    new-instance v16, Lcom/htc/fm/FreqRollBar$RotateThread;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/fm/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/FreqRollBar;Lcom/htc/fm/FreqRollBar$1;)V

    .line 542
    .local v16, rotatethread:Lcom/htc/fm/FreqRollBar$RotateThread;
    const/16 v21, 0x0

    move/from16 v0, p1

    if-ge v13, v0, :cond_9

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v9, v5}, Lcom/htc/fm/FreqRollBar$RotateThread;->setSwitcher(IZII)V

    .line 544
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/htc/fm/FreqRollBar$RotateThread;->setTimeStampOfUIStartingAdjust(J)V

    .line 545
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/fm/FreqRollBar$RotateThread;->setNextRotateTime(I)V

    .line 546
    invoke-virtual/range {v16 .. v16}, Lcom/htc/fm/FreqRollBar$RotateThread;->start()V

    .line 549
    .end local v16           #rotatethread:Lcom/htc/fm/FreqRollBar$RotateThread;
    :cond_0
    if-eq v10, v6, :cond_1

    .line 550
    new-instance v17, Lcom/htc/fm/FreqRollBar$RotateThread;

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/fm/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/FreqRollBar;Lcom/htc/fm/FreqRollBar$1;)V

    .line 551
    .local v17, rotatethread2:Lcom/htc/fm/FreqRollBar$RotateThread;
    const/16 v21, 0x1

    move/from16 v0, p1

    if-ge v13, v0, :cond_a

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v10, v6}, Lcom/htc/fm/FreqRollBar$RotateThread;->setSwitcher(IZII)V

    .line 553
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/htc/fm/FreqRollBar$RotateThread;->setTimeStampOfUIStartingAdjust(J)V

    .line 554
    const/16 v20, 0x50

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/fm/FreqRollBar$RotateThread;->setNextRotateTime(I)V

    .line 555
    invoke-virtual/range {v17 .. v17}, Lcom/htc/fm/FreqRollBar$RotateThread;->start()V

    .line 558
    .end local v17           #rotatethread2:Lcom/htc/fm/FreqRollBar$RotateThread;
    :cond_1
    if-eq v11, v7, :cond_2

    .line 559
    new-instance v18, Lcom/htc/fm/FreqRollBar$RotateThread;

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/fm/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/FreqRollBar;Lcom/htc/fm/FreqRollBar$1;)V

    .line 560
    .local v18, rotatethread3:Lcom/htc/fm/FreqRollBar$RotateThread;
    const/16 v21, 0x2

    move/from16 v0, p1

    if-ge v13, v0, :cond_b

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v11, v7}, Lcom/htc/fm/FreqRollBar$RotateThread;->setSwitcher(IZII)V

    .line 562
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/htc/fm/FreqRollBar$RotateThread;->setTimeStampOfUIStartingAdjust(J)V

    .line 563
    const/16 v20, 0xa0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/fm/FreqRollBar$RotateThread;->setNextRotateTime(I)V

    .line 564
    invoke-virtual/range {v18 .. v18}, Lcom/htc/fm/FreqRollBar$RotateThread;->start()V

    .line 567
    .end local v18           #rotatethread3:Lcom/htc/fm/FreqRollBar$RotateThread;
    :cond_2
    if-eq v12, v8, :cond_3

    .line 568
    new-instance v19, Lcom/htc/fm/FreqRollBar$RotateThread;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/fm/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/FreqRollBar;Lcom/htc/fm/FreqRollBar$1;)V

    .line 569
    .local v19, rotatethread4:Lcom/htc/fm/FreqRollBar$RotateThread;
    const/16 v21, 0x3

    move/from16 v0, p1

    if-ge v13, v0, :cond_c

    const/16 v20, 0x1

    :goto_7
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v12, v8}, Lcom/htc/fm/FreqRollBar$RotateThread;->setSwitcher(IZII)V

    .line 571
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/htc/fm/FreqRollBar$RotateThread;->setTimeStampOfUIStartingAdjust(J)V

    .line 572
    const/16 v20, 0xd2

    invoke-virtual/range {v19 .. v20}, Lcom/htc/fm/FreqRollBar$RotateThread;->setNextRotateTime(I)V

    .line 573
    invoke-virtual/range {v19 .. v19}, Lcom/htc/fm/FreqRollBar$RotateThread;->start()V

    .line 577
    .end local v3           #TimeStampOfUIStartingAdjust:J
    .end local v5           #forwordcurrentindex:I
    .end local v6           #forwordcurrentindex2:I
    .end local v7           #forwordcurrentindex3:I
    .end local v8           #forwordcurrentindex4:I
    .end local v9           #nowcurrentindex:I
    .end local v10           #nowcurrentindex2:I
    .end local v11           #nowcurrentindex3:I
    .end local v12           #nowcurrentindex4:I
    .end local v14           #p1:I
    .end local v15           #r:I
    .end local v19           #rotatethread4:Lcom/htc/fm/FreqRollBar$RotateThread;
    :cond_3
    :goto_8
    return-void

    .line 489
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FreqRollBar;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 502
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 506
    :cond_6
    const-string v20, "FMRadio_FreqRollBar"

    const-string v21, "[FMRadio][RollBar] Don\'t have to update"

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 515
    .restart local v14       #p1:I
    .restart local v15       #r:I
    :cond_7
    div-int/lit8 v5, v15, 0x64

    .restart local v5       #forwordcurrentindex:I
    goto/16 :goto_2

    .line 528
    .restart local v6       #forwordcurrentindex2:I
    .restart local v7       #forwordcurrentindex3:I
    .restart local v8       #forwordcurrentindex4:I
    :cond_8
    div-int/lit8 v9, v15, 0x64

    .restart local v9       #nowcurrentindex:I
    goto/16 :goto_3

    .line 542
    .restart local v3       #TimeStampOfUIStartingAdjust:J
    .restart local v10       #nowcurrentindex2:I
    .restart local v11       #nowcurrentindex3:I
    .restart local v12       #nowcurrentindex4:I
    .restart local v16       #rotatethread:Lcom/htc/fm/FreqRollBar$RotateThread;
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 551
    .end local v16           #rotatethread:Lcom/htc/fm/FreqRollBar$RotateThread;
    .restart local v17       #rotatethread2:Lcom/htc/fm/FreqRollBar$RotateThread;
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 560
    .end local v17           #rotatethread2:Lcom/htc/fm/FreqRollBar$RotateThread;
    .restart local v18       #rotatethread3:Lcom/htc/fm/FreqRollBar$RotateThread;
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 569
    .end local v18           #rotatethread3:Lcom/htc/fm/FreqRollBar$RotateThread;
    .restart local v19       #rotatethread4:Lcom/htc/fm/FreqRollBar$RotateThread;
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_7
.end method


# virtual methods
.method public OnCreate(ZI)V
    .locals 10
    .parameter "bIsPortrait"
    .parameter "freq"

    .prologue
    .line 134
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/FreqRollBar;->rotatetime:I

    .line 135
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/FreqRollBar;->rotatetime2:I

    .line 136
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/FreqRollBar;->rotatetime3:I

    .line 137
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/FreqRollBar;->rotatetime4:I

    .line 139
    const v0, 0x7f040015

    invoke-virtual {p0, v0}, Lcom/htc/fm/FreqRollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 140
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 143
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Lcom/htc/fm/FreqRollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    .line 144
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 147
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/htc/fm/FreqRollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    .line 148
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 151
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Lcom/htc/fm/FreqRollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    .line 152
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, upCenterX:F
    const/4 v4, 0x0

    .line 161
    .local v4, upCenterY:F
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/htc/fm/FreqRollBar;->getInt(I)I

    move-result v0

    int-to-float v4, v0

    .line 163
    new-instance v0, Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    .line 165
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 166
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 167
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 170
    new-instance v0, Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    .line 172
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 173
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 174
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 176
    new-instance v0, Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    .line 178
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime3:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 179
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 180
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 182
    new-instance v0, Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    .line 184
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime4:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 185
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 186
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 188
    new-instance v0, Lcom/htc/fm/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    .line 190
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 191
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 192
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 196
    new-instance v0, Lcom/htc/fm/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    .line 198
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 199
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 200
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 203
    new-instance v0, Lcom/htc/fm/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    .line 205
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime3:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 206
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 207
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 209
    new-instance v0, Lcom/htc/fm/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    .line 211
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime4:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 212
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 213
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 216
    new-instance v0, Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    .line 218
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 219
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 220
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 222
    new-instance v0, Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    .line 224
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 225
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 226
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 228
    new-instance v0, Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    .line 230
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime3:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 231
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 232
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 234
    new-instance v0, Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    .line 236
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime4:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 237
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 238
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 240
    new-instance v0, Lcom/htc/fm/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    .line 242
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 243
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 244
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 246
    new-instance v0, Lcom/htc/fm/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    .line 248
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 249
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 250
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 252
    new-instance v0, Lcom/htc/fm/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    .line 254
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime3:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 255
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 256
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 258
    new-instance v0, Lcom/htc/fm/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/FreqRollBar;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/FreqRollBar;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    .line 260
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime4:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 261
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 262
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 265
    iput p2, p0, Lcom/htc/fm/FreqRollBar;->mfreq:I

    .line 267
    iget v0, p0, Lcom/htc/fm/FreqRollBar;->mfreq:I

    div-int/lit16 v8, v0, 0x3e8

    .line 268
    .local v8, p1:I
    iget v0, p0, Lcom/htc/fm/FreqRollBar;->mfreq:I

    rem-int/lit16 v9, v0, 0x3e8

    .line 269
    .local v9, r:I
    rem-int/lit8 v0, v9, 0x64

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 270
    div-int/lit8 v0, v9, 0x64

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex:I

    .line 275
    :goto_0
    rem-int/lit8 v0, v8, 0xa

    iput v0, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex2:I

    .line 276
    div-int/lit8 v0, v8, 0xa

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex3:I

    .line 277
    div-int/lit8 v0, v8, 0x64

    iput v0, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex4:I

    .line 279
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 280
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 283
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 284
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 286
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 287
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 289
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 290
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 292
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->mImageIds:[Ljava/lang/Integer;

    iget v2, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 293
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->mImageIds2:[Ljava/lang/Integer;

    iget v2, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex2:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 294
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->mImageIds3:[Ljava/lang/Integer;

    iget v2, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex3:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 295
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->mImageIds4:[Ljava/lang/Integer;

    iget v2, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex4:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 298
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/FreqRollBar;->rotatetime:I

    .line 299
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/FreqRollBar;->rotatetime2:I

    .line 300
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/FreqRollBar;->rotatetime3:I

    .line 301
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/FreqRollBar;->rotatetime4:I

    .line 302
    return-void

    .line 272
    :cond_0
    div-int/lit8 v0, v9, 0x64

    iput v0, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex:I

    goto/16 :goto_0
.end method

.method public RotateSwitcher(IIII)Z
    .locals 5
    .parameter "SWITCHER"
    .parameter "forwordcurrentindex"
    .parameter "duration"
    .parameter "InterpolatorType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 311
    const-string v2, "FMRadio_FreqRollBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RotateSwitcher]+SWITCHER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    if-nez p1, :cond_1

    .line 314
    const-string v2, "FMRadio_FreqRollBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RotateSwitcher] mforwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget v2, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex:I

    if-eq v2, p2, :cond_0

    .line 318
    iput p2, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex:I

    .line 319
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 320
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 321
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 322
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 323
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/FreqRollBar;->setSwitcherInterpolatorType(II)V

    .line 324
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/FreqRollBar;->mImageIds:[Ljava/lang/Integer;

    iget v3, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 380
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 327
    goto :goto_0

    .line 330
    :cond_1
    if-ne p1, v0, :cond_3

    .line 332
    iget v2, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex2:I

    if-eq v2, p2, :cond_2

    .line 334
    iput p2, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex2:I

    .line 335
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 336
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 337
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 338
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 339
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/FreqRollBar;->setSwitcherInterpolatorType(II)V

    .line 340
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/FreqRollBar;->mImageIds2:[Ljava/lang/Integer;

    iget v3, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex2:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 343
    goto :goto_0

    .line 346
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 348
    iget v2, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex3:I

    if-eq v2, p2, :cond_4

    .line 350
    iput p2, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex3:I

    .line 351
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 352
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 353
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 354
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 355
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/FreqRollBar;->setSwitcherInterpolatorType(II)V

    .line 356
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/FreqRollBar;->mImageIds3:[Ljava/lang/Integer;

    iget v3, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex3:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 360
    goto :goto_0

    .line 363
    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    .line 365
    const-string v2, "FMRadio_FreqRollBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RotateSwitcher] mforwordcurrentindex4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex4:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget v2, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex4:I

    if-eq v2, p2, :cond_6

    .line 368
    iput p2, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex4:I

    .line 369
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 370
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 371
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 372
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 373
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/FreqRollBar;->setSwitcherInterpolatorType(II)V

    .line 374
    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/FreqRollBar;->mImageIds4:[Ljava/lang/Integer;

    iget v3, p0, Lcom/htc/fm/FreqRollBar;->mforwordcurrentindex4:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 377
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 380
    goto/16 :goto_0
.end method

.method public SetXasisRotationAngle(IFF)V
    .locals 0
    .parameter "direction"
    .parameter "DepthZ"
    .parameter "OffsetY"

    .prologue
    .line 111
    packed-switch p1, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iput p2, p0, Lcom/htc/fm/FreqRollBar;->ufdepthZ:F

    .line 114
    iput p3, p0, Lcom/htc/fm/FreqRollBar;->ufoffsetY:F

    goto :goto_0

    .line 117
    :pswitch_1
    iput p2, p0, Lcom/htc/fm/FreqRollBar;->fddepthZ:F

    .line 118
    iput p3, p0, Lcom/htc/fm/FreqRollBar;->fdoffsetY:F

    goto :goto_0

    .line 121
    :pswitch_2
    iput p2, p0, Lcom/htc/fm/FreqRollBar;->dfdepthZ:F

    .line 122
    iput p3, p0, Lcom/htc/fm/FreqRollBar;->dfoffsetY:F

    goto :goto_0

    .line 125
    :pswitch_3
    iput p2, p0, Lcom/htc/fm/FreqRollBar;->fudepthZ:F

    .line 126
    iput p3, p0, Lcom/htc/fm/FreqRollBar;->fuoffsetY:F

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getInt(I)I
    .locals 1
    .parameter "integer"

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/htc/fm/FreqRollBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getRotateTime()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/fm/FreqRollBar;->rotatetime:I

    return v0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 72
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar;->mcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, i:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 77
    return-object v0
.end method

.method public setFreq(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 582
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/fm/FreqRollBar;->setFreq(IZ)V

    .line 583
    return-void
.end method

.method public setFreq(IZ)V
    .locals 2
    .parameter "freq"
    .parameter "useAnimation"

    .prologue
    .line 586
    iget v0, p0, Lcom/htc/fm/FreqRollBar;->handlerfreq:I

    if-ne v0, p1, :cond_0

    .line 590
    :goto_0
    return-void

    .line 587
    :cond_0
    iput p1, p0, Lcom/htc/fm/FreqRollBar;->handlerfreq:I

    .line 588
    iput-boolean p2, p0, Lcom/htc/fm/FreqRollBar;->handleranimation:Z

    .line 589
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mActionHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setFreqbySeek(I)V
    .locals 2
    .parameter "freq"

    .prologue
    .line 458
    iput p1, p0, Lcom/htc/fm/FreqRollBar;->handlerfreq:I

    .line 459
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->mActionHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 460
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method public setMirror(Lcom/htc/fm/MirrorFace;)V
    .locals 0
    .parameter "Mirrorface"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/fm/FreqRollBar;->mirrorface:Lcom/htc/fm/MirrorFace;

    .line 84
    return-void
.end method

.method public setRotateTime(IIII)V
    .locals 0
    .parameter "Rotatetime"
    .parameter "Rotatetime2"
    .parameter "Rotatetime3"
    .parameter "Rotatetime4"

    .prologue
    .line 99
    iput p1, p0, Lcom/htc/fm/FreqRollBar;->rotatetime:I

    .line 100
    iput p2, p0, Lcom/htc/fm/FreqRollBar;->rotatetime2:I

    .line 101
    iput p3, p0, Lcom/htc/fm/FreqRollBar;->rotatetime3:I

    .line 102
    iput p4, p0, Lcom/htc/fm/FreqRollBar;->rotatetime4:I

    .line 103
    return-void
.end method

.method public setSwitcherInterpolatorType(II)V
    .locals 3
    .parameter "Switcher"
    .parameter "InterpolatorType"

    .prologue
    const/high16 v2, 0x4000

    .line 387
    packed-switch p2, :pswitch_data_0

    .line 453
    :goto_0
    return-void

    .line 391
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 394
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 395
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 396
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 397
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 400
    :pswitch_2
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 401
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 402
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 403
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 406
    :pswitch_3
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 407
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 408
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 409
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 412
    :pswitch_4
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 413
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 414
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 415
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 423
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 426
    :pswitch_6
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 427
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 428
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 429
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 432
    :pswitch_7
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 433
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 434
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 435
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 438
    :pswitch_8
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 439
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 440
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 441
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 444
    :pswitch_9
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 445
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 446
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 447
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 391
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 423
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
