.class public Lcom/htc/sdm/SDMCategory;
.super Ljava/lang/Object;
.source "SDMCategory.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SDMCategory] "


# instance fields
.field private cat:Ljava/lang/String;

.field private nId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "cat"
    .parameter "nId"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/SDMCategory;->cat:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sdm/SDMCategory;->nId:I

    .line 18
    iput-object p1, p0, Lcom/htc/sdm/SDMCategory;->cat:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/htc/sdm/SDMCategory;->nId:I

    .line 20
    return-void
.end method


# virtual methods
.method public getCat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/sdm/SDMCategory;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/sdm/SDMCategory;->nId:I

    return v0
.end method
