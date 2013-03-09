.class public final Lcom/htc/sdcardwizard/handler/SDCardItem;
.super Ljava/lang/Object;
.source "SDCardItem.java"


# static fields
.field public static final sizeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/sdcardwizard/handler/SDCardItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checked:Z

.field private data:Ljava/lang/String;

.field private final desc:Ljava/lang/String;

.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final id:Ljava/lang/String;

.field private final size:J

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/htc/sdcardwizard/handler/SDCardItem$1;

    invoke-direct {v0}, Lcom/htc/sdcardwizard/handler/SDCardItem$1;-><init>()V

    sput-object v0, Lcom/htc/sdcardwizard/handler/SDCardItem;->sizeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "id"
    .parameter "title"
    .parameter "desc"
    .parameter "size"

    .prologue
    .line 17
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/htc/sdcardwizard/handler/SDCardItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "id"
    .parameter "title"
    .parameter "desc"
    .parameter "size"
    .parameter "icon"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->id:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->title:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->desc:Ljava/lang/String;

    .line 24
    iput-wide p4, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->size:J

    .line 25
    iput-object p6, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->checked:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "title"
    .parameter "desc"
    .parameter "size"
    .parameter "icon"
    .parameter "data"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/htc/sdcardwizard/handler/SDCardItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;)V

    .line 31
    iput-object p7, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->data:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sdcardwizard/handler/SDCardItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 7
    iget-wide v0, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->size:J

    return-wide v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->checked:Z

    return v0
.end method

.method public reverseChecked()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/SDCardItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/handler/SDCardItem;->setChecked(Z)V

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/sdcardwizard/handler/SDCardItem;->checked:Z

    .line 60
    return-void
.end method
