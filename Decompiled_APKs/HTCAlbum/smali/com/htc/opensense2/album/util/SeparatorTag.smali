.class public Lcom/htc/opensense2/album/util/SeparatorTag;
.super Ljava/lang/Object;
.source "SeparatorTag.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_TOP:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final TYPE_BOTTOM:Ljava/lang/String; = "SEPARABLE_BOTTOM"

.field public static final TYPE_BREAKTOP:Ljava/lang/String; = "SEPARABLE_BREAKTOP"

.field public static final TYPE_DIVIDER:Ljava/lang/String; = "SEPARABLE_DIVIDER"

.field public static final TYPE_EMPTY:Ljava/lang/String; = "SEPARABLE_EMPTY"

.field public static final TYPE_LOADER:Ljava/lang/String; = "SEPARABLE_LOADER"

.field public static final TYPE_MIDDLE:Ljava/lang/String; = "SEPARABLE_MIDDLE"

.field public static final TYPE_PLACEHOLDER:Ljava/lang/String; = "SEPARABLE_PLACEHOLDER"

.field public static final TYPE_SINGLE:Ljava/lang/String; = "SEPARABLE_SINGLE"

.field public static final TYPE_TOP:Ljava/lang/String; = "SEPARABLE_TOP"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mShouldDraw:Z

.field private mShouldSeparate:Z

.field private mTagType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 21
    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    const-string v1, "SEPARABLE_SINGLE"

    invoke-direct {v0, v2, v2, v1}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZLjava/lang/String;)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 22
    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    const-string v1, "SEPARABLE_PLACEHOLDER"

    invoke-direct {v0, v2, v2, v1}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZLjava/lang/String;)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 23
    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    const-string v1, "SEPARABLE_BREAKTOP"

    invoke-direct {v0, v3, v2, v1}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZLjava/lang/String;)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 24
    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    const-string v1, "SEPARABLE_EMPTY"

    invoke-direct {v0, v3, v2, v1}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZLjava/lang/String;)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 25
    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-direct {v0, v3, v2}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZ)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 27
    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-direct {v0, v3, v2}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZ)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_TOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 28
    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    const-string v1, "SEPARABLE_MIDDLE"

    invoke-direct {v0, v3, v3, v1}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZLjava/lang/String;)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 29
    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-direct {v0, v2, v2}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZ)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 31
    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    const-string v1, "SEPARABLE_DIVIDER"

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZLjava/lang/String;)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .parameter "bShouldSeparate"
    .parameter "bShouldDrawThis"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldSeparate:Z

    .line 18
    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldDraw:Z

    .line 19
    const-string v0, "SEPARABLE_MIDDLE"

    iput-object v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    .line 48
    iput-boolean p1, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldSeparate:Z

    .line 49
    iput-boolean p2, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldDraw:Z

    .line 50
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 1
    .parameter "bShouldSeparate"
    .parameter "bShouldDrawThis"
    .parameter "szType"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldSeparate:Z

    .line 18
    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldDraw:Z

    .line 19
    const-string v0, "SEPARABLE_MIDDLE"

    iput-object v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    .line 53
    iput-boolean p1, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldSeparate:Z

    .line 54
    iput-boolean p2, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldDraw:Z

    .line 55
    iput-object p3, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    return-object v0
.end method

.method public isDivider()Z
    .locals 4

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    const-string v3, "SEPARABLE_DIVIDER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 73
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 72
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 73
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "szType"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldDraw:Z

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldSeparate:Z

    return v0
.end method
