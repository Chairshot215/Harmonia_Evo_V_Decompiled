.class Lcom/android/htcdialer/util/PhotoUtils$MyRecyclerListener;
.super Ljava/lang/Object;
.source "PhotoUtils.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/util/PhotoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRecyclerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/util/PhotoUtils;


# direct methods
.method private constructor <init>(Lcom/android/htcdialer/util/PhotoUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/htcdialer/util/PhotoUtils$MyRecyclerListener;->this$0:Lcom/android/htcdialer/util/PhotoUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htcdialer/util/PhotoUtils;Lcom/android/htcdialer/util/PhotoUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/android/htcdialer/util/PhotoUtils$MyRecyclerListener;-><init>(Lcom/android/htcdialer/util/PhotoUtils;)V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 195
    instance-of v2, p1, Lcom/android/htcdialer/util/PhotoUtils$Numbered;

    if-nez v2, :cond_0

    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/util/PhotoUtils$Numbered;

    .line 201
    .local v0, item:Lcom/android/htcdialer/util/PhotoUtils$Numbered;
    iget-object v2, p0, Lcom/android/htcdialer/util/PhotoUtils$MyRecyclerListener;->this$0:Lcom/android/htcdialer/util/PhotoUtils;

    invoke-interface {v0}, Lcom/android/htcdialer/util/PhotoUtils$Numbered;->getNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/htcdialer/util/PhotoUtils;->getKey(J)Lcom/android/htcdialer/util/PhotoUtils$Key;

    move-result-object v1

    .line 202
    .local v1, key:Lcom/android/htcdialer/util/PhotoUtils$Key;
    iget-object v2, p0, Lcom/android/htcdialer/util/PhotoUtils$MyRecyclerListener;->this$0:Lcom/android/htcdialer/util/PhotoUtils;

    invoke-virtual {v2, v1}, Lcom/android/htcdialer/util/PhotoUtils;->releaseContactPhoto(Lcom/android/htcdialer/util/PhotoUtils$Key;)V

    goto :goto_0
.end method
