.class Lcom/android/htcdialer/carhome/carhome$1;
.super Ljava/lang/Object;
.source "carhome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/carhome/carhome;->onCreateCarHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/carhome/carhome;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/carhome/carhome;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/htcdialer/carhome/carhome$1;->this$0:Lcom/android/htcdialer/carhome/carhome;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/htcdialer/carhome/carhome$1;->this$0:Lcom/android/htcdialer/carhome/carhome;

    #getter for: Lcom/android/htcdialer/carhome/carhome;->mFavoritesColumn:I
    invoke-static {v1}, Lcom/android/htcdialer/carhome/carhome;->access$000(Lcom/android/htcdialer/carhome/carhome;)I

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htcdialer"

    const-string v2, "com.android.htcdialer.carhome.MakecallSelectPeopleActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "display_mode"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/android/htcdialer/carhome/carhome$1;->this$0:Lcom/android/htcdialer/carhome/carhome;

    invoke-virtual {v1, v0}, Lcom/android/htcdialer/carhome/carhome;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
