.class Lcom/android/htccontacts/util/PhotoUtils$MyRecyclerListener;
.super Ljava/lang/Object;
.source "PhotoUtils.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/PhotoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRecyclerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/util/PhotoUtils;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/util/PhotoUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/htccontacts/util/PhotoUtils$MyRecyclerListener;->this$0:Lcom/android/htccontacts/util/PhotoUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/util/PhotoUtils;Lcom/android/htccontacts/util/PhotoUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/PhotoUtils$MyRecyclerListener;-><init>(Lcom/android/htccontacts/util/PhotoUtils;)V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 182
    instance-of v2, p1, Lcom/android/htccontacts/util/PhotoUtils$Numbered;

    if-nez v2, :cond_0

    .line 190
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/PhotoUtils$Numbered;

    .line 188
    .local v0, item:Lcom/android/htccontacts/util/PhotoUtils$Numbered;
    iget-object v2, p0, Lcom/android/htccontacts/util/PhotoUtils$MyRecyclerListener;->this$0:Lcom/android/htccontacts/util/PhotoUtils;

    invoke-interface {v0}, Lcom/android/htccontacts/util/PhotoUtils$Numbered;->getNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/htccontacts/util/PhotoUtils;->getKey(J)Lcom/android/htccontacts/util/PhotoUtils$Key;

    move-result-object v1

    .line 189
    .local v1, key:Lcom/android/htccontacts/util/PhotoUtils$Key;
    iget-object v2, p0, Lcom/android/htccontacts/util/PhotoUtils$MyRecyclerListener;->this$0:Lcom/android/htccontacts/util/PhotoUtils;

    invoke-virtual {v2, v1}, Lcom/android/htccontacts/util/PhotoUtils;->releaseContactPhoto(Lcom/android/htccontacts/util/PhotoUtils$Key;)V

    goto :goto_0
.end method
