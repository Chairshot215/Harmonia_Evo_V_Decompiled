.class Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonInfo"
.end annotation


# instance fields
.field private buttonPosition:I

.field private listener:Landroid/content/DialogInterface$OnClickListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "buttonPosition"
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;->buttonPosition:I

    .line 125
    iput-object p2, p0, Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;->title:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;->buttonPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/opensense/album/util/DrmManager$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method
