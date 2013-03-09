.class public Lcom/htc/fm/MirrorFace;
.super Landroid/widget/LinearLayout;
.source "MirrorFace.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/htc/fm/RollBar;


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadio_MirrorFace"


# instance fields
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

.field private mImageIds:[Ljava/lang/Integer;

.field private mImageIds2:[Ljava/lang/Integer;

.field private mImageIds3:[Ljava/lang/Integer;

.field private mImageIds4:[Ljava/lang/Integer;

.field private mSwitcherReverse:Landroid/widget/ImageSwitcher;

.field private mSwitcherReverse2:Landroid/widget/ImageSwitcher;

.field private mSwitcherReverse3:Landroid/widget/ImageSwitcher;

.field private mSwitcherReverse4:Landroid/widget/ImageSwitcher;

.field private mcontext:Landroid/content/Context;

.field mforwordcurrentindex:I

.field mforwordcurrentindex2:I

.field mforwordcurrentindex3:I

.field mforwordcurrentindex4:I

.field mfreq:I

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

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 310
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02007f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020065

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f020070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->mImageIds:[Ljava/lang/Integer;

    .line 318
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02007f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020065

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f020070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->mImageIds2:[Ljava/lang/Integer;

    .line 326
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02007f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020065

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f020070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->mImageIds3:[Ljava/lang/Integer;

    .line 334
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f020014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020065

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f020070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->mImageIds4:[Ljava/lang/Integer;

    .line 54
    iput-object p1, p0, Lcom/htc/fm/MirrorFace;->mcontext:Landroid/content/Context;

    .line 55
    const-string v0, "FMRadio_MirrorFace"

    const-string v1, "[MirrorFace] constructor "

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
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

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 310
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02007f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020065

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f020070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->mImageIds:[Ljava/lang/Integer;

    .line 318
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02007f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020065

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f020070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->mImageIds2:[Ljava/lang/Integer;

    .line 326
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02007f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020065

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f020070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->mImageIds3:[Ljava/lang/Integer;

    .line 334
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f020014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020065

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f020070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02006b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->mImageIds4:[Ljava/lang/Integer;

    .line 62
    iput-object p1, p0, Lcom/htc/fm/MirrorFace;->mcontext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public OnCreate(ZI)V
    .locals 12
    .parameter "bIsPortrait"
    .parameter "freq"

    .prologue
    .line 111
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    .line 112
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/MirrorFace;->rotatetime2:I

    .line 113
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/MirrorFace;->rotatetime3:I

    .line 114
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/MirrorFace;->rotatetime4:I

    .line 116
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/htc/fm/MirrorFace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    .line 117
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 121
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/htc/fm/MirrorFace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    .line 122
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 126
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/htc/fm/MirrorFace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    .line 127
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 131
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/htc/fm/MirrorFace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    .line 132
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 138
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/htc/fm/MirrorFace;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 139
    .local v8, imageview:Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020067

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 140
    .local v11, rotateImage:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 141
    .local v3, upCenterX:F
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 144
    .local v4, upCenterY:F
    new-instance v0, Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/MirrorFace;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/MirrorFace;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    .line 145
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 146
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 147
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 150
    new-instance v0, Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/MirrorFace;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/MirrorFace;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    .line 151
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 152
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 153
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 155
    new-instance v0, Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/MirrorFace;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/MirrorFace;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    .line 156
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 157
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 158
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 161
    new-instance v0, Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/MirrorFace;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/MirrorFace;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    .line 162
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 163
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 164
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 168
    new-instance v0, Lcom/htc/fm/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/MirrorFace;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/MirrorFace;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    .line 169
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 170
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 171
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 175
    new-instance v0, Lcom/htc/fm/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/MirrorFace;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/MirrorFace;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    .line 176
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 177
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 178
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 181
    new-instance v0, Lcom/htc/fm/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/MirrorFace;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/MirrorFace;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    .line 182
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 183
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 184
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 187
    new-instance v0, Lcom/htc/fm/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/MirrorFace;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/MirrorFace;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    .line 188
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 189
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 190
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 193
    new-instance v0, Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/MirrorFace;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/MirrorFace;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    .line 194
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 195
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 196
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 200
    new-instance v0, Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/MirrorFace;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/MirrorFace;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    .line 201
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 202
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 203
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 206
    new-instance v0, Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/MirrorFace;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/MirrorFace;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    .line 207
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 208
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 209
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 212
    new-instance v0, Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/MirrorFace;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/MirrorFace;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    .line 213
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 214
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 215
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 218
    new-instance v0, Lcom/htc/fm/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/MirrorFace;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/MirrorFace;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    .line 219
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 220
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 221
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 224
    new-instance v0, Lcom/htc/fm/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/MirrorFace;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/MirrorFace;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    .line 225
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 226
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 227
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 230
    new-instance v0, Lcom/htc/fm/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/MirrorFace;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/MirrorFace;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    .line 231
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 232
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 233
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 236
    new-instance v0, Lcom/htc/fm/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/MirrorFace;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/MirrorFace;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    .line 237
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 238
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 239
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 243
    iput p2, p0, Lcom/htc/fm/MirrorFace;->mfreq:I

    .line 244
    iget v0, p0, Lcom/htc/fm/MirrorFace;->mfreq:I

    div-int/lit16 v9, v0, 0x3e8

    .line 245
    .local v9, p1:I
    iget v0, p0, Lcom/htc/fm/MirrorFace;->mfreq:I

    rem-int/lit16 v10, v0, 0x3e8

    .line 246
    .local v10, r:I
    rem-int/lit8 v0, v10, 0x64

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 247
    div-int/lit8 v0, v10, 0x64

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex:I

    .line 252
    :goto_0
    rem-int/lit8 v0, v9, 0xa

    iput v0, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex2:I

    .line 253
    div-int/lit8 v0, v9, 0xa

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex3:I

    .line 254
    div-int/lit8 v0, v9, 0x64

    iput v0, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex4:I

    .line 257
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 258
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 260
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 261
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 263
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 264
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 266
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 267
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 269
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->mImageIds:[Ljava/lang/Integer;

    iget v2, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 270
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->mImageIds2:[Ljava/lang/Integer;

    iget v2, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex2:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 271
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->mImageIds3:[Ljava/lang/Integer;

    iget v2, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex3:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 272
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->mImageIds4:[Ljava/lang/Integer;

    iget v2, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex4:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 274
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    .line 275
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/MirrorFace;->rotatetime2:I

    .line 276
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/MirrorFace;->rotatetime3:I

    .line 277
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/MirrorFace;->rotatetime4:I

    .line 308
    return-void

    .line 249
    :cond_0
    div-int/lit8 v0, v10, 0x64

    iput v0, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex:I

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

    .line 424
    if-nez p1, :cond_1

    .line 426
    const-string v2, "FMRadio_MirrorFace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MirrorFace] RotateSwitcher mforwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex:I

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

    .line 427
    iget v2, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex:I

    if-eq v2, p2, :cond_0

    .line 429
    iput p2, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex:I

    .line 430
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 431
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 432
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 433
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 434
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/MirrorFace;->setSwitcherInterpolatorType(II)V

    .line 435
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/MirrorFace;->mImageIds:[Ljava/lang/Integer;

    iget v3, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 436
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/MirrorFace;->mImageIds:[Ljava/lang/Integer;

    iget v3, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 495
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 439
    goto :goto_0

    .line 442
    :cond_1
    if-ne p1, v0, :cond_3

    .line 444
    iget v2, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex2:I

    if-eq v2, p2, :cond_2

    .line 446
    iput p2, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex2:I

    .line 447
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 448
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 449
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 450
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 451
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/MirrorFace;->setSwitcherInterpolatorType(II)V

    .line 452
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/MirrorFace;->mImageIds2:[Ljava/lang/Integer;

    iget v3, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex2:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 453
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/MirrorFace;->mImageIds2:[Ljava/lang/Integer;

    iget v3, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex2:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 456
    goto :goto_0

    .line 459
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 461
    iget v2, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex3:I

    if-eq v2, p2, :cond_4

    .line 463
    iput p2, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex3:I

    .line 464
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 465
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 466
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 467
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 468
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/MirrorFace;->setSwitcherInterpolatorType(II)V

    .line 469
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/MirrorFace;->mImageIds3:[Ljava/lang/Integer;

    iget v3, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex3:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 470
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/MirrorFace;->mImageIds3:[Ljava/lang/Integer;

    iget v3, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex3:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 474
    goto/16 :goto_0

    .line 477
    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    .line 479
    const-string v2, "FMRadio_MirrorFace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FreqRollBar] RotateSwitcher mforwordcurrentindex4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex4:I

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

    .line 480
    iget v2, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex4:I

    if-eq v2, p2, :cond_6

    .line 482
    iput p2, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex4:I

    .line 483
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateUpToFrontAnimation;->setDuration(J)V

    .line 484
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToDownAnimation;->setDuration(J)V

    .line 485
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateDownToFrontAnimation;->setDuration(J)V

    .line 486
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/RotateFrontToUpAnimation;->setDuration(J)V

    .line 487
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/MirrorFace;->setSwitcherInterpolatorType(II)V

    .line 488
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/MirrorFace;->mImageIds4:[Ljava/lang/Integer;

    iget v3, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex4:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 489
    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/MirrorFace;->mImageIds4:[Ljava/lang/Integer;

    iget v3, p0, Lcom/htc/fm/MirrorFace;->mforwordcurrentindex4:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 492
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 495
    goto/16 :goto_0
.end method

.method public SetXasisRotationAngle(IFF)V
    .locals 0
    .parameter "direction"
    .parameter "DepthZ"
    .parameter "OffsetY"

    .prologue
    .line 89
    packed-switch p1, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iput p2, p0, Lcom/htc/fm/MirrorFace;->ufdepthZ:F

    .line 92
    iput p3, p0, Lcom/htc/fm/MirrorFace;->ufoffsetY:F

    goto :goto_0

    .line 95
    :pswitch_1
    iput p2, p0, Lcom/htc/fm/MirrorFace;->fddepthZ:F

    .line 96
    iput p3, p0, Lcom/htc/fm/MirrorFace;->fdoffsetY:F

    goto :goto_0

    .line 99
    :pswitch_2
    iput p2, p0, Lcom/htc/fm/MirrorFace;->dfdepthZ:F

    .line 100
    iput p3, p0, Lcom/htc/fm/MirrorFace;->dfoffsetY:F

    goto :goto_0

    .line 103
    :pswitch_3
    iput p2, p0, Lcom/htc/fm/MirrorFace;->fudepthZ:F

    .line 104
    iput p3, p0, Lcom/htc/fm/MirrorFace;->fuoffsetY:F

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 66
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->mcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, i:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 72
    return-object v0
.end method

.method public setFreq(I)V
    .locals 2
    .parameter "freq"

    .prologue
    .line 574
    iget v0, p0, Lcom/htc/fm/MirrorFace;->mfreq:I

    if-eq v0, p1, :cond_1

    .line 576
    iget v0, p0, Lcom/htc/fm/MirrorFace;->mfreq:I

    if-ge v0, p1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 579
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 581
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 582
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 584
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 585
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 587
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 588
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 603
    :goto_0
    iput p1, p0, Lcom/htc/fm/MirrorFace;->mfreq:I

    .line 611
    :goto_1
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 592
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 594
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 595
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 597
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 598
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 600
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 601
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 607
    :cond_1
    const-string v0, "FMRadio_MirrorFace"

    const-string v1, "[setFreq] Don\'t have to update"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setRotateDirection(Z)V
    .locals 2
    .parameter "bIsIncrease"

    .prologue
    .line 393
    if-eqz p1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 396
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 398
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 399
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 401
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 402
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 404
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 405
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 420
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 409
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 411
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 412
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 414
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 415
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 417
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 418
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/MirrorFace;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setRotateTime(IIII)V
    .locals 0
    .parameter "Rotatetime"
    .parameter "Rotatetime2"
    .parameter "Rotatetime3"
    .parameter "Rotatetime4"

    .prologue
    .line 77
    iput p1, p0, Lcom/htc/fm/MirrorFace;->rotatetime:I

    .line 78
    iput p2, p0, Lcom/htc/fm/MirrorFace;->rotatetime2:I

    .line 79
    iput p3, p0, Lcom/htc/fm/MirrorFace;->rotatetime3:I

    .line 80
    iput p4, p0, Lcom/htc/fm/MirrorFace;->rotatetime4:I

    .line 81
    return-void
.end method

.method public setSwitcherInterpolatorType(II)V
    .locals 3
    .parameter "Switcher"
    .parameter "InterpolatorType"

    .prologue
    const/high16 v2, 0x4000

    .line 502
    packed-switch p2, :pswitch_data_0

    .line 568
    :goto_0
    return-void

    .line 506
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 509
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 510
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 511
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 512
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 515
    :pswitch_2
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 516
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 517
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 518
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 521
    :pswitch_3
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 522
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 523
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 524
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 527
    :pswitch_4
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 528
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 529
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 530
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 538
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 541
    :pswitch_6
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 542
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 543
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 544
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 547
    :pswitch_7
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation2:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 548
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation2:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 549
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation2:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 550
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation2:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 553
    :pswitch_8
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation3:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 554
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation3:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 555
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation3:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 556
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation3:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 559
    :pswitch_9
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->ufrotation4:Lcom/htc/fm/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 560
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->fdrotation4:Lcom/htc/fm/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 561
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->dfrotation4:Lcom/htc/fm/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 562
    iget-object v0, p0, Lcom/htc/fm/MirrorFace;->furotation4:Lcom/htc/fm/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 502
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 506
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 538
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
